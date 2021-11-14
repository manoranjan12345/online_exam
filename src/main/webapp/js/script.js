function deleteItemFromQuestion(qId) {
	
	let que = JSON.parse(localStorage.getQuiz('que'));
	let ques = que.filter((quiz) => quiz.qid != qId)
	localStorage.setQuiz('que',JSON.stringify(ques))
	updateQue();
	
}