%rebase('osnova.tpl')

      <div class="row">
        <div class="col s12 m6">
          <div class="card blue-grey darken-1">
            <div class="card-content white-text">
              <span class="card-title">Dodajanje igre</span>
			  <form action = 'dodaj_igro' method = 'POST'>
			  <label class="active" for="ime_igre">Ime igre:</label>
			<input value="" id="ime_igre" type="text" class="validate">
			<label class="active" for="leto">Leto:</label>
			<input value="" id="leto" type="text" class="validate">
			<label class="active" for="razvijalec">Razvijalec:</label>
			<input value="" id="razvijalec" type="text" class="validate">
			<label class="active" for="zaloznik">Založnik:</label>
			<input value="" id="zaloznik" type="text" class="validate">
			Platforme:<br/>
			%for plat in platforme:
			<input type="checkbox" name="platforme" value="{{plat['id']}}"  id="plat{{plat['id']}}" checked>
			<label for="plat{{plat['id']}}">{{plat['katera']}}</label><br>
			%end
			<br>
			Zvrsti:<br/>
			%for zvrst in zvrsti:
			<input type="checkbox" name="zvrsti" value="{{zvrst['id']}}" id="zvrst{{zvrst['id']}}" checked>
			<label for="zvrst{{zvrst['id']}}">{{zvrst['ime']}}</label><br>
			%end
			
			

            </div>
            <div class="card-action">
              </a><button type = 'submit'>Dodaj!</button>
			  </form>
            </div>
          </div>
        </div>
      </div>