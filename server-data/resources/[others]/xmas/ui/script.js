const attenuationFactor = 3.25;
var maxVolume = 5;
const music = new Audio('./choirreverb.mp3');
music.loop = true;

function updateDistance(distance) {
	var volume = ((100 - distance * attenuationFactor) / 100) * (maxVolume / 100);
	if (volume < 0) volume = 0;
	music.volume = volume;
	if (music.paused) {
		if (music.duration > 0) {
			music.currentTime = Math.floor(Date.now() / 1000) % music.duration;
		}
		music.addEventListener("canplay", (event) => {
			/* the audio is now playable; play it if permissions allow */
			music.play();
		});
	}

}

window.addEventListener('message', event => {
	switch (event.data.type) {
		case 'updateDistance':
			updateDistance(event.data.distance);
			break;
		case 'setMaxVolume':
			maxVolume = event.data.volume;
			break;
	}
});

window.addEventListener('load', event => {
	fetch(`https://${GetParentResourceName()}/init`)
	.then(resp => resp.json())
	.then(resp => maxVolume = resp);
});
