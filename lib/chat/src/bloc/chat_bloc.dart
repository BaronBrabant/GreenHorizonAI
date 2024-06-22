import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:bloc/bloc.dart';

part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc(this.model) : super(ChatState()){

	  on<SendPrompt>(_onSendPrompt);


  }

  final GenerativeModel model;



  void _onSendPrompt(SendPromt event, Emitter<ChatState> emit) async {

	final content = [Content.text(event.prompt)];
	final response = await model.generateContent(content);

	emit(state.copyWith(
	

  }

}
