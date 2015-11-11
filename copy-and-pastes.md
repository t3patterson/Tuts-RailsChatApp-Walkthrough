#Lesson Materials


#Ruby 

## `@chirps` - initial static data for view
```
@chirps = [
  {name: "Travis", message: "hye guuys"},
  {name: "Carol", message: "hey there travis"},
  {name: "Adam", message: "hellloooo everyone"},
  {name: "Travis", message: "welcome to the chat party"}
]
```
------

## seed data for db
```
seedArray = [
  {name: "Jason", message: "I love chatting w peeople"},
  {name: "Zend", message: "Why does my name start with a z"},
  {name: "Ed", message: "this place is terrriffic"},
  {name: "DAK", message: "Will u be my frind somebody?"},
  {name: "Ed", message: "be quiet AK"},
  {name: "Zend", message: "why cant we all just get along?"}
]

seedArray.each do |msg|
  puts msg
  Chirpbox.create!(msg)
end 
```

##controller:
```
  def index
    @chirps = Chirpbox.all

    @new_chirp = Chirpbox.new()
    render("index")
  end

  def create
    @new_chirp= Chirpbox.new(params.require(:chirpbox).permit(:name,:message))
    @new_chirp.save
    redirect_to root_path
  end
```

#HTML 

##html for static chirp-msg box w static data
```
<!-- <div class="container chirp-box">
  <div class="media chirp-unit">
    <div class="media-left">
      <a href="#">
        <img class="media-object" src="https://robohash.org/sitsequiquia.png?size=70x70" alt="...">
      </a>
    </div>
    <div class="media-body">
      <h4 class="media-heading">Travis <small>Jan 21, 2015</small></h4>
      <p>Say hi to errone!</p>
    </div>
  </div>
  <div class="media chirp-unit">
    <div class="media-left">
      <a href="#">
        <img class="media-object" src="https://robohash.org/travis.png?size=70x70" alt="...">
      </a>
    </div>
    <div class="media-body">
      <h4 class="media-heading">Thomas <small>Jan 21, 2015</small></h4>
      <p>Say hi to errone!</p>
    </div>
  </div>
  <div class="media chirp-unit">
    <div class="media-left">
      <a href="#">
        <img class="media-object" src="https://robohash.org/thomas.png?size=70x70" alt="...">
      </a>
    </div>
    <div class="media-body">
      <h4 class="media-heading">Travis <small>Jan 21, 2015</small></h4>
      <p>Say hi to errone!</p>
    </div>
  </div>
</div> -->

```

##html for dynamic chirp-msg box
```
<% @chirps.each do |chirp| %>
  <div class="media chirp-unit">
    <div class="media-left">
      <a href="#">
        <img class="media-object" src="https://robohash.org/<%=chirp[:name]%> .png?size=70x70" alt="...">
      </a>
    </div>
    <div class="media-body">
      <h4 class="media-heading"><%=chirp[:name]%> <small>Jan 21, 2015</small></h4>
      <p><%=chirp[:message]%> </p>
    </div>
    
  </div>
  <%end%>
```

##html for submit-message box
```
<%=form_for @new_chirp do |f| %>

  <div class="submit-box">
         <%= f.text_field :name, {class: "form-control username", placeholder: "User"}%>
          <div class="input-group input-group-lg">
            <%= f.text_field :message, {class: "form-control message", placeholder: "chirp away"}%>
            <%= f.submit " + " , class: "input-group-addon label-success" %>
          </div>
      </div>
<%end%>

```



#CSS
###For Header Style
```
*,*:before,*:after{
  box-sizing: border-box;
}

header{
  >*{display: block; }
  img{
    width: 200px;
    margin: 0 auto;
  }
  h1{
    margin-top: 0;
  }
  text-align: center;
}

```

###For Chirp BoX unit
```
.chirp-box{
  padding: 10px;
  padding-bottom: 110px;
  background: #eee;
  position: relative;
}

.chirp-unit{
  background: #fff;
  padding-bottom: 5px;
  border: 2px solid #999;
  .media-body{
    padding-top: 10px;
  }
}

```

###For submit message Box at Bottom  Unit
```
  .add-msg{
    position: absolute;
    bottom: 0; left:50%;
    transform: translate(-50%,0%);
    width: 80%;
    padding: 10px;
    
    .username{
      display: inline-block;
      width: 20%;
      font-size: 18px;
      font-weight: 600;
      margin-bottom: 2px;
    }

    .message{
      font-size: 14px;
    }

    .input-group-addon{
      color: white;
      
      &:hover{
        cursor: pointer;
        background: #8ed;
      }
    }
  }
```