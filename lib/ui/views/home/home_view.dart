import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({super.key});

  @override
  Widget builder(BuildContext context, HomeViewModel viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mandi'),
        actions: [
          IconButton(
            onPressed: () {
              if (!viewModel.isBusy) {
                viewModel.signOut();
              }
            },
            icon: const Icon(Icons.exit_to_app_rounded),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Text(
                'List of Candidates',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Expanded(
                child: ValueListenableBuilder(
                    valueListenable: viewModel.listOfVotes,
                    builder: (context, votes, _) {
                      return Placeholder();
                      // return viewModel.listOfCandidates.isEmpty
                      // ? Text('Nothing received yet')
                      // : ListView.builder(
                      //     itemBuilder: (context, index) => ListTile(
                      //       title: Text(votes[index].selectedCandidate),
                      //     ),
                      //   );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();
}
