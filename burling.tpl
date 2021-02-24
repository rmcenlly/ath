% rebase('base.tpl', title='ASAS Athletics', page='Burling')

<p style="text-align:center">
<img src="/img/burling.png" alt="Unavalible" class="img-fluid" style="width:20%;">
</p>
<br>
<h4>Here is a list of all of Burling students, sorted by age group:</h4>
<br>

<button class="btn btn-light dropdown-toggle btn-block" style="background-color:#008F4C; color:white; font-weight:bold;" type="button" data-toggle="collapse" data-target="#collapseExample1" aria-expanded="false" aria-controls="collapseExample">
    15 Year Olds
</button>
<div class="collapse" id="collapseExample1">
  <div class="table table-body">
<table style="background-color:transparent;" class="table table-hover table-bordered table-sm ">
  <thead>
    <tr>
      <th scope="col">First Name</th>
      <th scope="col">Last Name</th>
      <th scope="col">Gender</th>
      <th scope="col">Enter in Event</th>
      <th scope="col">Submit</th>
    </tr>
  </thead>
    <tbody>
%for fifteen in fifteens:  
        <tr>
            <form action='/burling/submit' method='post'>
            <input type="hidden" name="StudentID" value="{{fifteen[0]}}">
                <td>{{fifteen[1]}}</td>
                <td>{{fifteen[2]}}</td>
                <td>{{fifteen[3]}}</td>
            </input>
                <td>
                    <div class="dropdown">
                        <select name="EventID" id="EventID" class="btn btn-BG dropdown-toggle">
                            <option selected>Event</option>
%for event in events:  
                            <option name = "option" value="{{event[0]}}">{{event[1]}}</option>
%end
                        </select>
                    </div>
                </td>
                <td>
                <input type="hidden" name="StudentID, EventID" value="{{events[0]}}, {{fifteen[0]}}" />
                <button type="submit" class="btn" id="submit">Submit</button>
                </td>
                </form>
        </tr>
%end
    </tbody>
</table>
  </div>
</div>
<br>

<button class="btn btn-light dropdown-toggle btn-block" style="background-color:#008F4C; color:white; font-weight:bold;" type="button" data-toggle="collapse" data-target="#collapseExample2" aria-expanded="false" aria-controls="collapseExample">
    16 Year Olds
  </button>
<div class="collapse" id="collapseExample2">
  <div class="table table-body">
<table style="background-color:transparent;" class="table table-hover table-bordered table-sm ">
  <thead style="background-color:#008F4C;color:white">
    <tr>
      <th scope="col">First Name</th>
      <th scope="col">Last Name</th>
      <th scope="col">Gender</th>
      <th scope="col">Enter in Event</th>
      <th scope="col">Submit</th>
    </tr>
  </thead>
    <tbody>
%for sixteen in sixteens:  
        <tr>
            <form action='/burling/submit' method='post'>
            <input type="hidden" name="StudentID" value="{{sixteen[0]}}">
                <td>{{sixteen[1]}}</td>
                <td>{{sixteen[2]}}</td>
                <td>{{sixteen[3]}}</td>
            </input>
                <td>
                    <div class="dropdown">
                        <select name="EventID" id="EventID" class="btn btn-BG dropdown-toggle">
                            <option selected>Event</option>
%for event in events:  
                            <option name = "option" value="{{event[0]}}">{{event[1]}}</option>
%end
                        </select>
                    </div>
                </td>
                <td>
                <input type="hidden" name="StudentID, EventID" value="{{events[0]}}, {{sixteen[0]}}" />
                <button type="submit" class="btn" id="submit">Submit</button>
                </td>
                </form>
        </tr>
%end
    </tbody>
</table>
  </div>
</div>
<br>

<button class="btn btn-light dropdown-toggle btn-block" style="background-color:#008F4C; color:white; font-weight:bold;" type="button" data-toggle="collapse" data-target="#collapseExample3" aria-expanded="false" aria-controls="collapseExample">
    17 Year Olds
  </button>
<div class="collapse" id="collapseExample3">
  <div class="table table-body">
<table style="background-color:transparent;" class="table table-hover table-bordered table-sm ">
  <thead style="background-color:#008F4C;color:white">
    <tr>
      <th scope="col">First Name</th>
      <th scope="col">Last Name</th>
      <th scope="col">Gender</th>
      <th scope="col">Enter in Event</th>
      <th scope="col">Submit</th>
    </tr>
  </thead>
    <tbody>
%for seventeen in seventeens:  
        <tr>
            <form action='/burling/submit' method='post'>
            <input type="hidden" name="StudentID" value="{{seventeen[0]}}">
                <td>{{seventeen[1]}}</td>
                <td>{{seventeen[2]}}</td>
                <td>{{seventeen[3]}}</td>
            </input>
                <td>
                    <div class="dropdown">
                        <select name="EventID" id="EventID" class="btn btn-BG dropdown-toggle">
                            <option selected>Event</option>
%for event in events:  
                            <option name = "option" value="{{event[0]}}">{{event[1]}}</option>
%end
                        </select>
                    </div>
                </td>
                <td>
                <input type="hidden" name="StudentID, EventID" value="{{events[0]}}, {{seventeen[0]}}" />
                <button type="submit" class="btn" id="submit">Submit</button>
                </td>
                </form>
        </tr>
%end
    </tbody>
</table>
  </div>
</div>
<br>

<button class="btn btn-light dropdown-toggle btn-block" style="background-color:#008F4C; color:white; font-weight:bold;" type="button" data-toggle="collapse" data-target="#collapseExample4" aria-expanded="false" aria-controls="collapseExample">
    Opens
  </button>
<div class="collapse" id="collapseExample4">
  <div class="table table-body">
<table style="background-color:transparent;" class="table table-hover table-bordered table-sm ">
  <thead style="background-color:#008F4C;color:white">
    <tr>
      <th scope="col">First Name</th>
      <th scope="col">Last Name</th>
      <th scope="col">Gender</th>
      <th scope="col">Enter in Event</th>
      <th scope="col">Submit</th>
    </tr>
  </thead>
  <tbody>
%for open in opens:
        <tr>
            <form action='/burling/submit' method='post'>
            <input type="hidden" name="StudentID" value="{{open[0]}}">
                <td>{{open[1]}}</td>
                <td>{{open[2]}}</td>
                <td>{{open[3]}}</td>
            </input>
                <td>
                    <div class="dropdown">
                        <select name="EventID" id="EventID" class="btn btn-BG dropdown-toggle">
                            <option selected>Event</option>
%for event in events:  
                            <option name = "option" value="{{event[0]}}">{{event[1]}}</option>
%end
                        </select>
                    </div>
                </td>
                <td>
                <input type="hidden" name="StudentID, EventID" value="{{events[0]}}, {{open[0]}}" />
                <button type="submit" class="btn" id="submit">Submit</button>
                </td>
                </form>
        </tr>
%end
    </tbody>
  </div>
</div>
</div>