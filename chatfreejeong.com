```html

body {
font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
min-height: 100vh;
display: flex;
flex-direction: column;
}

.header {
background: rgba(255, 255, 255, 0.95);
backdrop-filter: blur(10px);
padding: 15px 0;
box-shadow: 0 2px 20px rgba(0,0,0,0.1);
position: sticky;
top: 0;
z-index: 100;
}

.nav-container {
max-width: 1200px;
margin: 0 auto;
display: flex;
justify-content: space-between;
align-items: center;
padding: 0 20px;
}

.logo {
font-size: 24px;
font-weight: bold;
color: #667eea;
text-decoration: none;
}

.nav-links {
display: flex;
gap: 30px;
list-style: none;
}

.nav-links a {
text-decoration: none;
color: #333;
font-weight: 500;
transition: color 0.3s ease;
}

.nav-links a:hover {
color: #667eea;
}

.main-container {
flex: 1;
display: flex;
justify-content: center;
align-items: center;
padding: 40px 20px;
}

.chat-container {
background: white;
border-radius: 20px;
padding: 30px;
box-shadow: 0 20px 60px rgba(0,0,0,0.1);
max-width: 800px;
width: 100%;
height: 600px;
display: flex;
flex-direction: column;
}

.chat-header {
text-align: center;
margin-bottom: 30px;
padding-bottom: 20px;
border-bottom: 2px solid #f0f0f0;
}

.chat-title {
font-size: 28px;
color: #333;
margin-bottom: 10px;
}

.chat-subtitle {
color: #666;
font-size: 16px;
}

.robot-avatar {
width: 80px;
height: 80px;
margin: 0 auto 20px;
background: linear-gradient(145deg, #4facfe 0%, #00f2fe 100%);
border-radius: 50%;
display: flex;
align-items: center;
justify-content: center;
font-size: 40px;
animation: pulse 2s infinite;
}

.chat-messages {
flex: 1;
overflow-y: auto;
padding: 20px 0;
display: flex;
flex-direction: column;
gap: 15px;
}

.message {
max-width: 80%;
padding: 15px 20px;
border-radius: 20px;
font-size: 16px;
line-height: 1.5;
animation: fadeInUp 0.5s ease;
}

.bot-message {
background: linear-gradient(145deg, #4facfe 0%, #00f2fe 100%);
color: white;
align-self: flex-start;
border-bottom-left-radius: 5px;
}

.user-message {
background: #f8f9fa;
color: #333;
align-self: flex-end;
border-bottom-right-radius: 5px;
border: 1px solid #e9ecef;
}

.typing-indicator {
display: none;
align-self: flex-start;
background: #f0f0f0;
padding: 15px 20px;
border-radius: 20px 20px 20px 5px;
margin-bottom: 10px;
}

.typing-dots {
display: flex;
gap: 4px;
}

.dot {
width: 8px;
height: 8px;
background: #999;
border-radius: 50%;
animation: typing 1.4s infinite;
}

.dot:nth-child(2) { animation-delay: 0.2s; }
.dot:nth-child(3) { animation-delay: 0.4s; }

.chat-input-area {
display: flex;
gap: 15px;
padding-top: 20px;
border-top: 2px solid #f0f0f0;
}

.chat-input {
flex: 1;
padding: 15px 20px;
border: 2px solid #e9ecef;
border-radius: 25px;
font-size: 16px;
outline: none;
transition: all 0.3s ease;
}

.chat-input:focus {
border-color: #4facfe;
box-shadow: 0 0 0 3px rgba(79, 172, 254, 0.1);
}

.send-button {
background: linear-gradient(145deg, #4facfe 0%, #00f2fe 100%);
color: white;
border: none;
padding: 15px 25px;
border-radius: 25px;
font-size: 16px;
font-weight: bold;
cursor: pointer;
transition: all 0.3s ease;
min-width: 80px;
}

.send-button:hover {
transform: translateY(-2px);
box-shadow: 0 5px 15px rgba(79, 172, 254, 0.4);
}

.send-button:disabled {
opacity: 0.6;
cursor: not-allowed;
transform: none;
}

.quick-actions {
display: flex;
flex-wrap: wrap;
gap: 10px;
margin-top: 15px;
justify-content: center;
}

.quick-btn {
background: white;
border: 2px solid #4facfe;
color: #4facfe;
padding: 8px 16px;
border-radius: 20px;
font-size: 14px;
cursor: pointer;
transition: all 0.3s ease;
}

.quick-btn:hover {
background: #4facfe;
color: white;
transform: translateY(-1px);
}

.footer {
background: rgba(255, 255, 255, 0.1);
backdrop-filter: blur(10px);
text-align: center;
padding: 20px;
color: white;
font-size: 14px;
}

.footer a {
color: white;
text-decoration: none;
font-weight: bold;
}

@keyframes pulse {
0%, 100% { transform: scale(1); }
50% { transform: scale(1.05); }
}

@keyframes fadeInUp {
from {
opacity: 0;
transform: translateY(20px);
}
to {
opacity: 1;
transform: translateY(0);
}
}

@keyframes typing {
0%, 60%, 100% { transform: translateY(0); }
30% { transform: translateY(-10px); }
}

@media (max-width: 768px) {
.nav-links {
display: none;
}

.chat-container {
margin: 20px;
height: calc(100vh - 200px);
padding: 20px;
}

.chat-title {
font-size: 24px;
}

.message {
max-width: 90%;
}

.chat-input-area {
flex-direction: column;
}

.send-button {
width: 100%;
}
}

.status-indicator {
display: inline-block;
width: 10px;
height: 10px;
background: #4CAF50;
border-radius: 50%;
margin-right: 8px;
animation: pulse 2s infinite;
}




🤖


ChatFreeJeong AI



24시간 무료 AI 챗봇 서비스






안녕하세요! ChatFreeJeong에 오신 것을 환영합니다! 🎉

저는 여러분의 AI 어시스턴트입니다. 무엇을 도와드릴까요?














type="text" 
class="chat-input" 
id="messageInput" 
placeholder="메시지를 입력하세요..." 
maxlength="500"
>

전송




👋 인사
🌤️ 날씨
😄 농담
❓ 도움말
ℹ️ 서비스 소개






© 2024 ChatFreeJeong.com - 무료 AI 챗봇 서비스 | 모든 권리 보유


📞 연락처: +82 10-5484-1380





const chatMessages = document.getElementById('chatMessages');
const messageInput = document.getElementById('messageInput');
const sendButton = document.getElementById('sendButton');
const typingIndicator = document.getElementById('typingIndicator');

// AI 응답 데이터베이스
const aiResponses = {
greetings: [
"안녕하세요! ChatFreeJeong에서 만나뵙게 되어 기쁩니다! 😊",
"반갑습니다! 오늘 하루는 어떻게 보내고 계신가요?",
"안녕하세요! 무엇을 도와드릴까요? 🤗"
],
weather: [
"죄송하지만 실시간 날씨 정보는 제공하지 않아요. 날씨 앱이나 포털 사이트를 확인해보세요! ☀️",
"날씨 정보는 기상청이나 날씨 앱에서 확인하시는 것이 가장 정확해요! 🌤️",
"실시간 날씨는 확인할 수 없지만, 항상 우산을 준비하시는 것을 추천드려요! ☔"
],
jokes: [
"왜 컴퓨터는 감기에 걸리지 않을까요? 바이러스 백신이 있거든요! 😄",
"프로그래머가 바에 가서 맥주 2잔을 주문했어요. 바텐더가 '2잔이요?'라고 물으니 '아니요, 10잔이요!'라고 답했대요. (2진법이거든요!) 🍺",
"AI가 농담을 하면 뭐라고 할까요? '인공지능적인 유머'! 🤖"
],
help: [
"ChatFreeJeong 사용법을 알려드릴게요!\n\n✅ 자유롭게 질문하세요\n✅ 빠른 버튼을 활용하세요\n✅ 24시간 언제든 이용 가능해요\n✅ 완전 무료 서비스입니다!",
"도움이 필요하시군요! 저는 다양한 주제로 대화할 수 있어요:\n\n💬 일상 대화\n🤔 질문 답변\n😄 재미있는 이야기\n📚 정보 제공\n\n무엇이든 편하게 물어보세요!"
],
about: [
"ChatFreeJeong은 무료 AI 챗봇 서비스입니다! 🚀\n\n🌟 특징:\n• 24시간 무료 이용\n• 다양한 주제 대화\n• 빠른 응답 속도\n• 사용자 친화적 인터페이스\n\n언제든 편하게 대화하세요!",
"안녕하세요! ChatFreeJeong은 여러분과 자유롭게 대화할 수 있는 AI 서비스예요.\n\n💡 www.chatfreejeong.com에서 언제든 접속하여 대화를 나눠보세요!\n\n완전 무료이고 회원가입도 필요 없어요! 😊"
],
default: [
"흥미로운 말씀이네요! 더 자세히 설명해 주실 수 있나요? 🤔",
"그렇군요! 다른 궁금한 것도 있으시면 언제든 물어보세요! 😊",
"재미있는 주제네요! 어떻게 생각하게 되셨나요? 💭",
"좋은 질문이에요! 더 구체적으로 설명해 주시면 더 도움을 드릴 수 있을 것 같아요! ✨",
"ChatFreeJeong과 함께 대화해 주셔서 감사해요! 또 다른 이야기도 들려주세요! 🎉"
]
};

function getAIResponse(message) {
const msg = message.toLowerCase();

if (msg.includes('안녕') || msg.includes('하이') || msg.includes('hello') || msg.includes('hi')) {
return getRandomResponse('greetings');
} else if (msg.includes('날씨') || msg.includes('weather')) {
return getRandomResponse('weather');
} else if (msg.includes('농담') || msg.includes('웃긴') || msg.includes('재미') || msg.includes('joke')) {
return getRandomResponse('jokes');
} else if (msg.includes('도움') || msg.includes('help') || msg.includes('사용법') || msg.includes('어떻게')) {
return getRandomResponse('help');
} else if (msg.includes('chatfreejeong') || msg.includes('서비스') || msg.includes('소개') || msg.includes('뭔가') || msg.includes('about')) {
return getRandomResponse('about');
} else {
return getRandomResponse('default');
}
}

function getRandomResponse(category) {
const responses = aiResponses[category];
return responses[Math.floor(Math.random() * responses.length)];
}

function addMessage(message, isUser = false) {
const messageDiv = document.createElement('div');
messageDiv.className = `message ${isUser ? 'user-message' : 'bot-message'}`;
messageDiv.innerHTML = message.replace(/\n/g, '
');

chatMessages.appendChild(messageDiv);
chatMessages.scrollTop = chatMessages.scrollHeight;
}

function showTypingIndicator() {
typingIndicator.style.display = 'block';
chatMessages.scrollTop = chatMessages.scrollHeight;
}

function hideTypingIndicator() {
typingIndicator.style.display = 'none';
}

function sendMessage() {
const message = messageInput.value.trim();
if (message === '') return;

// 사용자 메시지 추가
addMessage(message, true);
messageInput.value = '';

// 전송 버튼 비활성화
sendButton.disabled = true;
sendButton.textContent = '전송중...';

// 타이핑 인디케이터 표시
showTypingIndicator();

// AI 응답 시뮬레이션 (1-3초 지연)
const delay = Math.random() * 2000 + 1000;
setTimeout(() => {
hideTypingIndicator();
const response = getAIResponse(message);
addMessage(response);

// 전송 버튼 재활성화
sendButton.disabled = false;
sendButton.textContent = '전송';
}, delay);
}

function sendQuickMessage(message) {
messageInput.value = message;
sendMessage();
}

// 엔터키로 메시지 전송
messageInput.addEventListener('keypress', function(e) {
if (e.key === 'Enter' && !e.shiftKey) {
e.preventDefault();
sendMessage();
}
});

// 입력 필드 포커스
messageInput.focus();

// 초기 환영 메시지
setTimeout(() => {
addMessage("www.chatfreejeong.com에 방문해 주셔서 감사합니다! 🌟
궁금한 것이 있으시면 언제든 물어보세요!");
}, 2000);

// 페이지 제목 업데이트
let originalTitle = document.title;
let titleInterval;

function startTitleAnimation() {
let dots = '';
titleInterval = setInterval(() => {
dots = dots.length >= 3 ? '' : dots + '.';
document.title = `새 메시지${dots} - ChatFreeJeong`;
}, 500);
}

function stopTitleAnimation() {
clearInterval(titleInterval);
document.title = originalTitle;
}

// 페이지가 비활성화될 때 제목 애니메이션 시작
document.addEventListener('visibilitychange', function() {
if (document.hidden) {
startTitleAnimation();
} else {
stopTitleAnimation();
}
});

