<?php

namespace App\Http\Controllers;

use App\Models\MembersList;
use Illuminate\Http\Request;

class MembersController extends Controller
{
    // show members list
    public function index()
    {
        $memberList = MembersList::orderByDesc("availability")->orderBy("date_assignment")->paginate(10);
        return view("dashboard")->with(["members" => $memberList]);
    }

    /**
     * Create member
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function create(Request $request)
    {
        $request->validate([
            "name" => "required",
            "date_assignment" => "required"
        ]);
        $createMember = MembersList::create([
            "name" => $request->name,
            "date_assignment" => $request->date_assignment,
            "availability" =>  isset($request->availability) ? 1 : 0
        ]);
        return redirect()->back()->with("success", "Member added");
    }

    /**
     * @param $member
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function edit($member)
    {
        $memberDetails = MembersList::find($member);
        return view("member-edit")->with(["member" => $memberDetails]);
    }

    /**
     * Update member
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(Request $request)
    {
        $request->validate([
            "id" => "required",
            "name" => "required",
            "date_assignment" => "required"
        ]);

        MembersList::findOrFail($request->id)->update([
            "name" => $request->name,
            "date_assignment" => $request->date_assignment,
            "availability" => isset($request->availability) ? 1 : 0
        ]);

        return redirect()->back()->with("success", "Member updated");
    }

    /**
     * @param $member
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function delete($member)
    {
        $memberDetails = MembersList::destroy($member);
        return redirect("/")->with("success", "Member deleted successfully");
    }
}
