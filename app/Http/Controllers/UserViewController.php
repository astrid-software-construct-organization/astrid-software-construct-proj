<?php

namespace App\Http\Controllers;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class UserViewController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    //get user data

    public function index()
    {
        $users = User::all();

        return view('accounts.viewAccounts')->with('users', $users);
    }

    public function show()
    {
        return view('accounts.addUser');
    }


    public function store(Request $request)
    {
        $request->validate([
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:8'],
            'role' => ['required', 'string', 'max:15'],
        ]);

        $input = $request->all();
        $query = User::create($input);
        if ($query) {
            return redirect('accounts')->with('message', 'User Addedd!');
        } else {
            return redirect('accounts')->with('message', 'Fail to add user');
        }
    }
    public function edit($id)
    {
        $user = DB::table('users')->where('id','=',$id)->first();
        return view('accounts.editAccount', compact('user'));
    }

    public function update(Request $request, $id)
    {
        $user = User::find($id);
        $user->name = $request->input('name');
        $user->email = $request->input('email');
        $user->role = $request->input('role');
        $user->update();
        return redirect('accounts')->with('status','Account Updated Successfully');
    }

    protected function destroy($id)
    {   $user = User::find($id);
        $user->delete();
        return redirect()->back()->with('status', 'Account Deleted Successfully');
    }
}
