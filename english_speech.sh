#!/bin/bash
# english_speech.sh
# script d'écriture de speech de rapport de stage aléatoire en anglais

# le script attend un paramètre et test si il est correct
# code erreur en cas de mauvais paramètre
E_MAUVAIS_ARGS=85

# les paramètres yes ou no définissent si le projet a été fini dans les temps
PARAMETRE1="-yes"
PARAMETRE2="-no"
parametres_scripts="$PARAMETRE1 $PARAMETRE2"

# nombre d'arguments attendus
Nombre_arguments_attendus=1

# entreprise dans laquelle le stage a été éffectué
ENTREPRISE="XX1"

# ville de l'entreprise
VILLE="Bouc Bel Air"

# nom du stagiaire
NOM="Gumb"

# prénom du stagiaire
PRENOM="Anthony"

# date de début du stage
DATE_DEBUT="15st April 2017"

# date de fin du stage
DATE_FIN="1st September 2017"

# durée du stage
TEMPS_DE_FORMATION="ten weeks"

# nombre de personnes dans l'équipe de travail
NB_PERSONNE=3

# variables contenants les différents cas de réussite
REUSSITE1=''
REUSSITE2=''
REUSSITE2_2=''

# test du nombre de paramètres
if [ $# -ne $Nombre_arguments_attendus  ]
then
	echo "Usage: `basename $0` $parametres_scripts"
	# `basename $0` est le nom du fichier contenant le script.
	echo "Veuillez entrer $Nombre_arguments_attendus paramètres ($parametres_scripts)"
	exit $E_MAUVAIS_ARGS
else
	# test du premier paramètre
	if [ $1 != $PARAMETRE1 ] && [ $1 != $PARAMETRE2 ]
	then
		echo "le paramètre $1 n'éxiste pas"
		exit $E_MAUVAIS_ARGS
	else
		echo "Paramètre 1: OK"
	fi
fi

LEVEL1=(
'begin'
'start'
)
rand=$[ $RANDOM % ${#LEVEL1[@]} ]
RANDOM_LEVEL1=${LEVEL1[$rand]}

LEVEL2=(
'brief'
'short'
'quick'
)
rand=$[ $RANDOM % ${#LEVEL2[@]} ]
RANDOM_LEVEL2=${LEVEL2[$rand]}

LEVEL3=(
'overview'
'description'
'profile'
)
rand=$[ $RANDOM % ${#LEVEL3[@]} ]
RANDOM_LEVEL3=${LEVEL3[$rand]}

LEVEL4=(
'Then'
'after'
'next'
'second'
)
rand=$[ $RANDOM % ${#LEVEL4[@]} ]
RANDOM_LEVEL4=${LEVEL4[$rand]}

LEVEL5=(
'describe'
"talk about"
'discuss'
'explain'
)
rand=$[ $RANDOM % ${#LEVEL5[@]} ]
RANDOM_LEVEL5=${LEVEL5[$rand]}

LEVEL6=(
'asked'
'expected'
'required'
)
rand=$[ $RANDOM % ${#LEVEL6[@]} ]
RANDOM_LEVEL6=${LEVEL6[$rand]}

LEVEL7=(
'conclude'
'finish'
'end'
)
rand=$[ $RANDOM % ${#LEVEL7[@]} ]
RANDOM_LEVEL7=${LEVEL7[$rand]}

LEVEL8_1=(
'professional'
'personal'
)
rand=$[ $RANDOM % ${#LEVEL8_1[@]} ]
RANDOM_LEVEL8_1=${LEVEL8_1[$rand]}

LEVEL8_2=(
'gain'
'interest'
'benefit'
)
rand=$[ $RANDOM % ${#LEVEL8_2[@]} ]
RANDOM_LEVEL8_2=${LEVEL8_2[$rand]}

LEVEL8=(
"What i meant to me on a $RANDOM_LEVEL8_1 level, challenges encountered."
"What the $RANDOM_LEVEL8_2 was for me on both a human and professional level."
"How enriching it was for me."
)
rand=$[ $RANDOM % ${#LEVEL8[@]} ]
RANDOM_LEVEL8=${LEVEL8[$rand]}

LEVEL9_1_1=(
'to'
'for'
)
rand=$[ $RANDOM % ${#LEVEL9_1_1[@]} ]
RANDOM_LEVEL9_1_1=${LEVEL9_1_1[$rand]}

LEVEL9_1=(
"So concerning"
"Now $RANDOM_LEVEL9_1_1"
)
rand=$[ $RANDOM % ${#LEVEL9_1[@]} ]
RANDOM_LEVEL9_1=${LEVEL9_1[$rand]}

LEVEL9_2=(
'located'
'situated'
)
rand=$[ $RANDOM % ${#LEVEL9_2[@]} ]
RANDOM_LEVEL9_2=${LEVEL9_2[$rand]}

LEVEL9_3=(
'internship'
'placement'
)
rand=$[ $RANDOM % ${#LEVEL9_3[@]} ]
RANDOM_LEVEL9_3=${LEVEL9_3[$rand]}

LEVEL9=(
"$RANDOM_LEVEL9_1 my host company it is $RANDOM_LEVEL9_2 in $VILLE"
"I carried out my $RANDOM_LEVEL9_3 at $ENTREPRISE in $VILLE."
)
rand=$[ $RANDOM % ${#LEVEL9[@]} ]
RANDOM_LEVEL9=${LEVEL9[$rand]}

LEVEL10=(
"an IT company"
"an industrial company"
"a service provider"
"a software company"
)
rand=$[ $RANDOM % ${#LEVEL10[@]} ]
RANDOM_LEVEL10=${LEVEL10[$rand]}

LEVEL11=(
"their main activity"
"They specialise"
)
rand=$[ $RANDOM % ${#LEVEL11[@]} ]
RANDOM_LEVEL11=${LEVEL11[$rand]}

LEVEL12=(
"software creating"
"providing a service"
)
rand=$[ $RANDOM % ${#LEVEL12[@]} ]
RANDOM_LEVEL12=${LEVEL12[$rand]}

LEVEL13=(
'describe'
"talk about"
)
rand=$[ $RANDOM % ${#LEVEL13[@]} ]
RANDOM_LEVEL13=${LEVEL13[$rand]}

LEVEL14=(
'task'
'job'
)
rand=$[ $RANDOM % ${#LEVEL14[@]} ]
RANDOM_LEVEL14=${LEVEL14[$rand]}

LEVEL15=(
'had'
"was required"
)
rand=$[ $RANDOM % ${#LEVEL15[@]} ]
RANDOM_LEVEL15=${LEVEL15[$rand]}

LEVEL16=(
"The means provided"
"To achieve these tasks"
)
rand=$[ $RANDOM % ${#LEVEL16[@]} ]
RANDOM_LEVEL16=${LEVEL16[$rand]}

LEVEL17=(
"my internship co-ordinator"
"a team of $NB_PERSONNE people"
)
rand=$[ $RANDOM % ${#LEVEL17[@]} ]
RANDOM_LEVEL17=${LEVEL17[$rand]}

LEVEL19=(
'happy'
'glad'
'pleased'
)
rand=$[ $RANDOM % ${#LEVEL19[@]} ]
RANDOM_LEVEL19=${LEVEL19[$rand]}

LEVEL19_1=(
'task'
'job'
)
rand=$[ $RANDOM % ${#LEVEL19_1[@]} ]
RANDOM_LEVEL19_1=${LEVEL19_1[$rand]}



if [ $1 = '-yes' ]
then
	REUSSITE1="went according to plan"
	REUSSITE2="I am $LEVEL19 to say that we completed the $LEVEL19_1 within the deadline."
else
	REUSSITE1="did not always go but"
	REUSSITE2="We did not quite manage to complete the job within the deadline but what"
	REUSSITE2_2="is left to do is well documented and should be finished very soon."
fi

LEVEL18=(
"co-ordinator was"
"fellow workers were"
)
rand=$[ $RANDOM % ${#LEVEL18[@]} ]
RANDOM_LEVEL18=${LEVEL18[$rand]}

{ #bloc enregistré dans le fichier
	echo "--------------------------------- ENGLISH SPEECH -----------------------------------"
	echo "                                                               `date '+%A %d %B %Y'`"
	echo "$NOM"
	echo "$PRENOM"
	echo ""
	echo ""
	echo "I will $RANDOM_LEVEL1 by giving a $RANDOM_LEVEL2 $RANDOM_LEVEL3 of the host company"
	echo "$RANDOM_LEVEL4 i will $RANDOM_LEVEL5 my mission what i was $RANDOM_LEVEL6 to do."
	echo "To $RANDOM_LEVEL7 i will say a few words on:"
	echo "$RANDOM_LEVEL8"
	echo "$RANDOM_LEVEL9"
	echo "It is $RANDOM_LEVEL10 $RANDOM_LEVEL11 in $RANDOM_LEVEL12"
	echo "Now i will $RANDOM_LEVEL13 my mission."
	echo "My internship was from $DATE_DEBUT to $DATE_FIN it lasted $TEMPS_DE_FORMATION"
	echo "My $RANDOM_LEVEL14 was divided in two parts:"
	echo "- first i was asked to develop a client-server application"
	echo "- second to develop a web application, for the client-server application i $RANDOM_LEVEL15 to."
	echo "- design and set up a database."
	echo "- develop an interface for an IT application then for the web application i $RANDOM_LEVEL15 to"
	echo "  develop web pages with a link to the database."
	echo "- implement a content management solution"
	echo "- develop a simple mobile application"
	echo "On arrival i was given the specification."
	echo "$RANDOM_LEVEL16 were:"
	echo "- a fully equiped office"
	echo "- a PC with all the necessary software installed"
	echo "- Password and access to network and database"
	echo "I worked with $RANDOM_LEVEL17"
	echo "The work $REUSSITE1 and my $LEVEL18 very helpfull."
	echo "$REUSSITE2"
	echo "$REUSSITE2_2"
	echo "We encountered some unforeseen situations."
	echo "They took longer to deal with than we initially thought."
} >> english-speech.txt

echo "Speech written!"

# Log errors
if [ $? -gt 0 ]; then
	echo "Failed to send SMS: $RESPONSE"
	exit 1
fi

