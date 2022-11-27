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
                <div class="p-6 text-gray-900">
                        <h3>Edit member:</h3>
                        <form name="" method="POST" action="{{ route("update") }}">
                            @csrf
                            <div class="form-group">
                                <label for="exampleInputName1">Name address</label>
                                <input type="text" class="form-control" id="name" name="name"
                                       aria-describedby="nameHelp" placeholder="Enter name"
                                    value="{{ $member->name }}"
                                >
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Date last assignment</label>
                                <input type="date" class="form-control" id="date_assignment"
                                       value="{{ \Carbon\Carbon::parse($member->date_assignment)->format("Y-m-d") }}"
                                       name="date_assignment">
                            </div>
                            <div class="form-check mb-4">
                                <input type="checkbox" class="form-check-input" name="availability" id="availability" @if($member->availability === 1) checked @endif />
                                <label class="form-check-label" for="availability">Availability</label>
                            </div>
                            <input type="hidden" name="id" value="{{ $member->id }}">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </form>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
