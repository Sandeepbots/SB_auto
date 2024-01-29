if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Sandeepbots/SB_auto /SB_auto
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /SB_auto
fi
cd /SB_auto
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
