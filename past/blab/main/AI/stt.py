import snowboydecoder #import STT module
import sys
import signal

interrupted = False


def signal_handler(signal, frame):
    global interrupted
    interrupted = True


def interrupt_callback():
    global interrupted
    return interrupted

if len(sys.argv) != 3:
    print("Error: need to specify 2 model names")
    print("Usage: python demo.py 1st.model 2nd.model")
    sys.exit(-1)

models = sys.argv[1:]

# capture SIGINT signal, e.g., Ctrl+C
signal.signal(signal.SIGINT, signal_handler)

sensitivity = [0.5]*len(models)
detector = snowboydecoder.HotwordDetector(models, sensitivity=sensitivity)
callbacks = [lambda: snowboydecoder.play_audio_file(snowboydecoder.DETECT_DING),
             lambda: snowboydecoder.play_audio_file(snowboydecoder.DETECT_DONG)]
print('Listening...')


detector.start(detected_callback=callbacks,
               interrupt_check=interrupt_callback,
               sleep_time=0.03)

detector.terminate()

import sys
import base64
import requests


def get_wave(fname):
    with open(fname) as infile:
        return base64.b64encode(infile.read())


endpoint = "https://snowboy.kitt.ai/api/v1/train/"


############# 시스템 설정값에따라 불러올 정보 #############
token = ""
hotword_name = "???"
language = "kor" #한국어 설정
age_group = "20_29" 
gender = "M"
microphone = "macbook microphone" 
############### 설정 종료 ##################

if __name__ == "__main__":
    try:
        [_, wav1, wav2, wav3, out] = sys.argv
    except ValueError:
        print "Usage: %s wave_file1 wave_file2 wave_file3 out_model_name" % sys.argv[0]
        sys.exit()

    data = {
        "name": hotword_name,
        "language": language,
        "age_group": age_group,
        "gender": gender,
        "microphone": microphone,
        "token": token,
        "voice_samples": [
            {"wave": get_wave(wav1)}, # 사전 녹음되어 학습시킨 녹음 파일
            {"wave": get_wave(wav2)},
            {"wave": get_wave(wav3)}
        ]
    }

    response = requests.post(endpoint, json=data) #선행 입력된 endpoint 주소 요청
    if response.ok:
        with open(out, "w") as outfile:
            outfile.write(response.content)
        print "Saved model to '%s'." % out
    else:
        print "Request failed."
        print response.text



#  #! /usr/bin/env bash
#     ENDPOINT="https://snowboy.kitt.ai/api/v1/train/"

#     ############# MODIFY THE FOLLOWING #############
#     TOKEN="??"
#     NAME="??"
#     LANGUAGE="en"
#     AGE_GROUP="20_29"
#     GENDER="M"
#     MICROPHONE="PS3 Eye"
#     ############### END OF MODIFY ##################

#     if [[ "$#" != 4 ]]; then
#         printf "Usage: %s wave_file1 wave_file2 wave_file3 out_model_name" $0
#         exit
#     fi

#     WAV1=`base64 $1`
#     WAV2=`base64 $2`
#     WAV3=`base64 $3`
#     OUTFILE="$4"

#     cat <<EOF >data.json
#     {
#         "name": "$NAME",
#         "language": "$LANGUAGE",
#         "age_group": "$AGE_GROUP",
#         "token": "$TOKEN",
#         "gender": "$GENDER",
#         "microphone": "$MICROPHONE",
#         "voice_samples": [
#             {"wave": "$WAV1"},
#             {"wave": "$WAV2"},
#             {"wave": "$WAV3"}
#         ]
#     }
#     EOF

#     curl -H "Content-Type: application/json" -X POST -d @data.json $ENDPOINT > $OUTFILE