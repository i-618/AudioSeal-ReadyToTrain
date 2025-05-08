cd audioseal && pip3 install -e .
cd ../audiocraft && pip3 install -e .
sudo apt install ffmpeg


cd ../voxpopuli
python -m voxpopuli.download_audios --root ../ --subset 400k --num_files_vox 1
python -m voxpopuli.get_unlabelled_data --root ../ --subset 400k


cd ../audiocraft 
python -m audiocraft.data.audio_dataset ../ egs/voxpopuli/data.jsonl.gzpython -m audiocraft.data.audio_dataset ../ egs/voxpopuli/data.jsonl.gz
export USER=audiosealexp1 && dora run solver=watermark/robustness dset=audio/example!export USER=audiosealexp1 && dora run solver=watermark/robustness dset=audio/example
