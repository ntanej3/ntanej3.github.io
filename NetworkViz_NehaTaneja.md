

```python
import json
films = json.load(open("shared/sp18-is590dv/data/star_wars/films.json"))
```


```python
from IPython.core.interactiveshell import InteractiveShell
InteractiveShell.ast_node_interactivity = "all"
```


```python
film_list = {}
for film in range(len(films)):
    print(films[film]['pk'])
    film_list[films[film]['pk']] = films[film]['fields']
```

    1
    2
    3
    4
    5
    6



```python
starships_input = json.load(open("shared/sp18-is590dv/data/star_wars/starships.json"))
#starships_input1

```


```python

starships = {}
for starship in starships_input:
    starships[starship['pk']] = starship['fields']
#starships
```


```python
characters_input = json.load(open("shared/sp18-is590dv/data/star_wars/people.json"))


```


```python
characters = {}
for character in characters_input:
    characters[character['pk']] = character['fields']
```


```python
for film in films:
    print("Film: ", film["fields"]["title"])
    for character in  film["fields"]["characters"]:
        print("\t\t", characters[character]["name"])
    print()
```

    Film:  A New Hope
    		 Luke Skywalker
    		 C-3PO
    		 R2-D2
    		 Darth Vader
    		 Leia Organa
    		 Owen Lars
    		 Beru Whitesun lars
    		 R5-D4
    		 Biggs Darklighter
    		 Obi-Wan Kenobi
    		 Wilhuff Tarkin
    		 Chewbacca
    		 Han Solo
    		 Greedo
    		 Jabba Desilijic Tiure
    		 Wedge Antilles
    		 Jek Tono Porkins
    		 Raymus Antilles
    
    Film:  The Empire Strikes Back
    		 Luke Skywalker
    		 C-3PO
    		 R2-D2
    		 Darth Vader
    		 Leia Organa
    		 Obi-Wan Kenobi
    		 Chewbacca
    		 Han Solo
    		 Wedge Antilles
    		 Yoda
    		 Palpatine
    		 Boba Fett
    		 IG-88
    		 Bossk
    		 Lando Calrissian
    		 Lobot
    
    Film:  Return of the Jedi
    		 Luke Skywalker
    		 C-3PO
    		 R2-D2
    		 Darth Vader
    		 Leia Organa
    		 Obi-Wan Kenobi
    		 Chewbacca
    		 Han Solo
    		 Jabba Desilijic Tiure
    		 Wedge Antilles
    		 Yoda
    		 Palpatine
    		 Boba Fett
    		 Lando Calrissian
    		 Ackbar
    		 Mon Mothma
    		 Arvel Crynyd
    		 Wicket Systri Warrick
    		 Nien Nunb
    		 Bib Fortuna
    
    Film:  The Phantom Menace
    		 C-3PO
    		 R2-D2
    		 Obi-Wan Kenobi
    		 Anakin Skywalker
    		 Jabba Desilijic Tiure
    		 Yoda
    		 Palpatine
    		 Qui-Gon Jinn
    		 Nute Gunray
    		 Finis Valorum
    		 Padmé Amidala
    		 Jar Jar Binks
    		 Roos Tarpals
    		 Rugor Nass
    		 Ric Olié
    		 Watto
    		 Sebulba
    		 Quarsh Panaka
    		 Shmi Skywalker
    		 Darth Maul
    		 Ayla Secura
    		 Ratts Tyerel
    		 Dud Bolt
    		 Gasgano
    		 Ben Quadinaros
    		 Mace Windu
    		 Ki-Adi-Mundi
    		 Kit Fisto
    		 Eeth Koth
    		 Adi Gallia
    		 Saesee Tiin
    		 Yarael Poof
    		 Plo Koon
    		 Mas Amedda
    
    Film:  Attack of the Clones
    		 C-3PO
    		 R2-D2
    		 Owen Lars
    		 Beru Whitesun lars
    		 Obi-Wan Kenobi
    		 Anakin Skywalker
    		 Yoda
    		 Palpatine
    		 Boba Fett
    		 Nute Gunray
    		 Padmé Amidala
    		 Jar Jar Binks
    		 Watto
    		 Shmi Skywalker
    		 Ayla Secura
    		 Mace Windu
    		 Ki-Adi-Mundi
    		 Kit Fisto
    		 Plo Koon
    		 Mas Amedda
    		 Gregar Typho
    		 Cordé
    		 Cliegg Lars
    		 Poggle the Lesser
    		 Luminara Unduli
    		 Barriss Offee
    		 Dormé
    		 Dooku
    		 Bail Prestor Organa
    		 Jango Fett
    		 Zam Wesell
    		 Dexter Jettster
    		 Lama Su
    		 Taun We
    		 Jocasta Nu
    		 R4-P17
    		 Wat Tambor
    		 San Hill
    		 Shaak Ti
    		 Sly Moore
    
    Film:  Revenge of the Sith
    		 Luke Skywalker
    		 C-3PO
    		 R2-D2
    		 Darth Vader
    		 Leia Organa
    		 Owen Lars
    		 Beru Whitesun lars
    		 Obi-Wan Kenobi
    		 Anakin Skywalker
    		 Wilhuff Tarkin
    		 Chewbacca
    		 Yoda
    		 Palpatine
    		 Nute Gunray
    		 Padmé Amidala
    		 Ayla Secura
    		 Mace Windu
    		 Ki-Adi-Mundi
    		 Kit Fisto
    		 Eeth Koth
    		 Adi Gallia
    		 Saesee Tiin
    		 Plo Koon
    		 Poggle the Lesser
    		 Luminara Unduli
    		 Dooku
    		 Bail Prestor Organa
    		 R4-P17
    		 Shaak Ti
    		 Grievous
    		 Tarfful
    		 Raymus Antilles
    		 Sly Moore
    		 Tion Medon
    



```python
node_with_chars_and_respective_movies = []

for character_pk in characters:
    print("Character: ",character_pk, " ", characters[character_pk]["name"])
    media = []
    for film in film_list:
        #print(film_list[film]["starships"])
       
        for starship_char in film_list[film]["characters"]:
            #print(starship_char)
            if(character_pk == starship_char):
                #print("\t", film_list[film]["title"])
                media.append(film_list[film]["title"])
     
    a = {"label":characters[character_pk]["name"], "media": media}
    node_with_chars_and_respective_movies.append(a)
                    
```

    Character:  1   Luke Skywalker
    Character:  2   C-3PO
    Character:  3   R2-D2
    Character:  4   Darth Vader
    Character:  5   Leia Organa
    Character:  6   Owen Lars
    Character:  7   Beru Whitesun lars
    Character:  8   R5-D4
    Character:  9   Biggs Darklighter
    Character:  10   Obi-Wan Kenobi
    Character:  11   Anakin Skywalker
    Character:  12   Wilhuff Tarkin
    Character:  13   Chewbacca
    Character:  14   Han Solo
    Character:  15   Greedo
    Character:  16   Jabba Desilijic Tiure
    Character:  18   Wedge Antilles
    Character:  19   Jek Tono Porkins
    Character:  20   Yoda
    Character:  21   Palpatine
    Character:  22   Boba Fett
    Character:  23   IG-88
    Character:  24   Bossk
    Character:  25   Lando Calrissian
    Character:  26   Lobot
    Character:  27   Ackbar
    Character:  28   Mon Mothma
    Character:  29   Arvel Crynyd
    Character:  30   Wicket Systri Warrick
    Character:  31   Nien Nunb
    Character:  32   Qui-Gon Jinn
    Character:  33   Nute Gunray
    Character:  34   Finis Valorum
    Character:  35   Padmé Amidala
    Character:  36   Jar Jar Binks
    Character:  37   Roos Tarpals
    Character:  38   Rugor Nass
    Character:  39   Ric Olié
    Character:  40   Watto
    Character:  41   Sebulba
    Character:  42   Quarsh Panaka
    Character:  43   Shmi Skywalker
    Character:  44   Darth Maul
    Character:  45   Bib Fortuna
    Character:  46   Ayla Secura
    Character:  47   Ratts Tyerel
    Character:  48   Dud Bolt
    Character:  49   Gasgano
    Character:  50   Ben Quadinaros
    Character:  51   Mace Windu
    Character:  52   Ki-Adi-Mundi
    Character:  53   Kit Fisto
    Character:  54   Eeth Koth
    Character:  55   Adi Gallia
    Character:  56   Saesee Tiin
    Character:  57   Yarael Poof
    Character:  58   Plo Koon
    Character:  59   Mas Amedda
    Character:  60   Gregar Typho
    Character:  61   Cordé
    Character:  62   Cliegg Lars
    Character:  63   Poggle the Lesser
    Character:  64   Luminara Unduli
    Character:  65   Barriss Offee
    Character:  66   Dormé
    Character:  67   Dooku
    Character:  68   Bail Prestor Organa
    Character:  69   Jango Fett
    Character:  70   Zam Wesell
    Character:  71   Dexter Jettster
    Character:  72   Lama Su
    Character:  73   Taun We
    Character:  74   Jocasta Nu
    Character:  75   R4-P17
    Character:  76   Wat Tambor
    Character:  77   San Hill
    Character:  78   Shaak Ti
    Character:  79   Grievous
    Character:  80   Tarfful
    Character:  81   Raymus Antilles
    Character:  82   Sly Moore
    Character:  83   Tion Medon



```python
import bqplot
```


```python
chars = ["Boba Fett", "Yoda", "Jabba Desilijic Tiure", "Darth Vader", "Obi-Wan Kenobi",
         "Beru Whitesun lars", "Mon Mothma"]
```


```python
chars1 = []    
for i in range(len(node_with_chars_and_respective_movies)):
    if (node_with_chars_and_respective_movies[i]['label'] in chars):
        chars1.append(node_with_chars_and_respective_movies[i])
chars1     
```




    [{'label': 'Darth Vader',
      'media': ['A New Hope',
       'The Empire Strikes Back',
       'Return of the Jedi',
       'Revenge of the Sith']},
     {'label': 'Beru Whitesun lars',
      'media': ['A New Hope', 'Attack of the Clones', 'Revenge of the Sith']},
     {'label': 'Obi-Wan Kenobi',
      'media': ['A New Hope',
       'The Empire Strikes Back',
       'Return of the Jedi',
       'The Phantom Menace',
       'Attack of the Clones',
       'Revenge of the Sith']},
     {'label': 'Jabba Desilijic Tiure',
      'media': ['A New Hope', 'Return of the Jedi', 'The Phantom Menace']},
     {'label': 'Yoda',
      'media': ['The Empire Strikes Back',
       'Return of the Jedi',
       'The Phantom Menace',
       'Attack of the Clones',
       'Revenge of the Sith']},
     {'label': 'Boba Fett',
      'media': ['The Empire Strikes Back',
       'Return of the Jedi',
       'Attack of the Clones']},
     {'label': 'Mon Mothma', 'media': ['Return of the Jedi']}]




```python
for film in films:
    film_chars = film["fields"]["characters"]
    print(film["fields"]["title"])
    for character in film_chars:
        if characters[character]["name"] in chars: 
            print("\t\t",characters[character]["name"])
    print()
```

    A New Hope
    		 Darth Vader
    		 Beru Whitesun lars
    		 Obi-Wan Kenobi
    		 Jabba Desilijic Tiure
    
    The Empire Strikes Back
    		 Darth Vader
    		 Obi-Wan Kenobi
    		 Yoda
    		 Boba Fett
    
    Return of the Jedi
    		 Darth Vader
    		 Obi-Wan Kenobi
    		 Jabba Desilijic Tiure
    		 Yoda
    		 Boba Fett
    		 Mon Mothma
    
    The Phantom Menace
    		 Obi-Wan Kenobi
    		 Jabba Desilijic Tiure
    		 Yoda
    
    Attack of the Clones
    		 Beru Whitesun lars
    		 Obi-Wan Kenobi
    		 Yoda
    		 Boba Fett
    
    Revenge of the Sith
    		 Darth Vader
    		 Beru Whitesun lars
    		 Obi-Wan Kenobi
    		 Yoda
    



```python
link_data = []
for file in films:
    film_chars = file["fields"]["characters"]
    for character1 in film_chars:
        
        name1 = characters[character1]["name"]
        if name1 not in chars: 
            continue
        for character2 in film_chars:
            name2 = characters[character2]["name"]
            if name2 not in chars: 
                continue
            link_data.append({'source' : chars.index(name1), 'target' : chars.index(name2)})
            
            #print("\t\t",link_data)
            #print()
        #print("\t",link_data)
    #print(link_data)
tooltip = bqplot.Tooltip(fields = ["label", "media"])

def print_stars_with_movies(obj, element):
    print("Character: ",element["data"]["label"])
    print("\tin Movies",element["data"]["media"])
    print(" ")
    


graph = bqplot.Graph(node_data = chars1, 
                     link_data=link_data,
                     tooltip = tooltip,
                     charge = 300, 
                     link_distance = 300)

fig = bqplot.Figure(marks = [graph], fig_margin={'top':0, 'bottom':10, 'left':0, 'right':0})
fig.title = "Star War characters with the link as common movies"
fig.layout.height = '500px'
fig.layout.width = "700px"
display(fig)

graph.on_element_click(print_stars_with_movies)
```


    Figure(fig_margin={'top': 0, 'bottom': 10, 'left': 0, 'right': 0}, layout=Layout(height='500px', min_width='12…

