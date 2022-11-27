<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Members list assignments') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg pt-2">

                @include('layouts.success_messages')
                <p class="ml-4">
                    Total members: {{ $members->total() }}
                </p>
                <div class="p-2 text-gray-900">
                    @forelse($members AS $mem)
                        @if($loop->first)
                            <table class="table">
                                <thead>
                                <tr>
                                    <th>Member</th>
                                    <th>Date</th>
                                    <th>Controller</th>
                                </tr>
                                </thead>
                                @endif
                                <tr @if($mem->availability === 0) class="bg-warning" @endif>
                                    <td>{{ $mem->name }}</td>
                                    <td>{{ \Carbon\Carbon::parse($mem->date_assignment)->format("d/m/Y") }}</td>
                                    <td><a class="btn btn-info"
                                           href="edit/{{ $mem->id }}">Edit</a>
                                        <a class="btn btn-danger"
                                           href="delete/{{ $mem->id }}">delete</a>
                                    @if($mem->availability === 0)
                                            Unavailable
                                        @endif </td>
                                </tr>
                                @if($loop->last)
                            </table>
                        @endif
                    @empty
                        List empty
                    @endforelse

                    {{ $members->links() }}
                    <hr/>
                    <h3>Add a member:</h3>
                    <form name="" method="POST" action="{{ route("create") }}">
                        @csrf
                        <div class="form-group">
                            <label for="exampleInputName1">Name address</label>
                            <input type="text" class="form-control" id="name" name="name"
                                   aria-describedby="nameHelp" placeholder="Enter name">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <input type="date" class="form-control" id="date_assignment"
                                   value="{{ \Carbon\Carbon::parse("now")->format("Y-m-d") }}"
                                   name="date_assignment">
                        </div>
                        <div class="form-check mb-4">
                            <input type="checkbox" class="form-check-input" name="availability" id="availability"
                                   checked/>
                            <label class="form-check-label" for="availability">Availability</label>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
