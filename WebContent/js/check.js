	$('input[name^="usrId"]').on({
		'focus' : function(){
			orgVal ='';
		},
		'keyup' : function(){
			clearTimeout(tm);
			var me = this;
			//입력된 값이 없거나, 키 입력이 끝났을 때
			//기존 값과 현재 값이 동일하면 검증하지 않음
			if(me.value.trim() === '' || me.value.trim() === orgVal){
				return;
			}
			tm = setTimeout(function(){
				//ID검증을 위한 ajax호출
				$.ajax({
					url : '...',
					data : {id:me.value},
					method : 'POST',
					dataType : 'json',
					cache : false
				})
				.done(function(data){
					//피드백 추가
					feedback($(me).find(' ~ .alert:eq(0)'), data['result']);
				})
			}, 400);
		}
	});
	
	var feedbackMsg = {
			'duplicated' : '이미 사용중인 아이디입니다.',
			'blocked' : '사용 불가한 아이디 입니다.',
			'passed' : '사용 가능한 아이디 입니다.',
			'shortid' : '아이디가 너무 짧습니다.',
			'strength' : ['very-weak','weak','normal','strong','very-strong'],
			'very-weak' : '강도 매우 취약',
			'weak' : '강도 취약',
			'normal' : '강도 보통',
			'strong' : '강도 강함',
			'very-strong' : '강도 매우 강함',
			'same' : '비밀번호 일치',
			'non-same' : '비밀번호 일치하지 않음'
	};
	//피드백 메세지 노출 함수
	function feedback(elem, feedbackCode){
		$(elem)
		.empty().append('<div class="' + feedbackCode + '">'+feedbackMsg[feedbackCode]+'</div>');
	}