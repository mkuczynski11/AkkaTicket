�
dC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Shared\NoConnectionException.cs
	namespace 	

AkkaTicket
 
. 
Shared 
{ 
public 

class !
NoConnectionException &
:' (
	Exception) 2
{ 
} 
} �
rC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Shared\Messages\User\Out\RespondUserExists.cs
	namespace 	

AkkaTicket
 
. 
Shared 
. 
Messages $
.$ %
User% )
.) *
Out* -
{ 
public 

sealed 
class 
RespondUserExists )
{ 
public 
RespondUserExists  
(  !
string! '
	requestId( 1
)1 2
{ 	
	RequestId 
= 
	requestId !
;! "
} 	
public		 
string		 
	RequestId		 
{		  !
get		" %
;		% &
}		' (
}

 
} �
xC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Shared\Messages\User\Out\RespondUserDoesNotExist.cs
	namespace 	

AkkaTicket
 
. 
Shared 
. 
Messages $
.$ %
User% )
.) *
Out* -
{ 
public 

sealed 
class #
RespondUserDoesNotExist /
{ 
public #
RespondUserDoesNotExist &
(& '
string' -
	requestId. 7
)7 8
{ 	
	RequestId 
= 
	requestId !
;! "
} 	
public		 
string		 
	RequestId		 
{		  !
get		" %
;		% &
}		' (
}

 
} �
pC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Shared\Messages\User\Out\RespondUserData.cs
	namespace 	

AkkaTicket
 
. 
Shared 
. 
Messages $
.$ %
User% )
.) *
Out* -
{ 
public 

sealed 
class 
RespondUserData '
{ 
public 
RespondUserData 
( 
string %
	requestId& /
,/ 0
string1 7
email8 =
,= >
string? E
nameF J
,J K
stringL R
surnameS Z
,Z [
List\ `
<` a
stringa g
>g h
reservationsi u
)u v
{ 	
	RequestId 
= 
	requestId !
;! "
Email 
= 
email 
; 
Name		 
=		 
name		 
;		 
Surname

 
=

 
surname

 
;

 
Reservations 
= 
reservations '
;' (
} 	
public 
string 
	RequestId 
{  !
get" %
;% &
}' (
public 
string 
Email 
{ 
get !
;! "
}# $
public 
string 
Name 
{ 
get  
;  !
}" #
public 
string 
Surname 
{ 
get  #
;# $
}% &
public 
List 
< 
string 
> 
Reservations (
{) *
get+ .
;. /
}0 1
} 
} �
sC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Shared\Messages\User\Out\RespondUserCreated.cs
	namespace 	

AkkaTicket
 
. 
Shared 
. 
Messages $
.$ %
User% )
.) *
Out* -
{ 
public 

sealed 
class 
RespondUserCreated *
{ 
public 
RespondUserCreated !
(! "
string" (
	requestId) 2
,2 3
string4 :
	userEmail; D
)D E
{ 	
	RequestId		 
=		 
	requestId		 !
;		! "
	UserEmail

 
=

 
	userEmail

 !
;

! "
} 	
public 
string 
	RequestId 
{  !
get" %
;% &
}' (
public 
string 
	UserEmail 
{  !
get" %
;% &
}' (
} 
} �	
sC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Shared\Messages\User\In\RequestReadUserData.cs
	namespace 	

AkkaTicket
 
. 
Shared 
. 
Messages $
.$ %
User% )
.) *
In* ,
{ 
public 

sealed 
class 
RequestReadUserData +
{ 
public 
RequestReadUserData "
(" #
string# )
	requestId* 3
,3 4
string5 ;
email< A
)A B
{ 	
	RequestId 
= 
	requestId !
;! "
Email 
= 
email 
; 
EntityId		 
=		 
email		 
;		 
}

 	
public 
string 
EntityId 
{  
get! $
;$ %
}& '
public 
string 
	RequestId 
{  !
get" %
;% &
}' (
public 
string 
Email 
{ 
get !
;! "
}# $
} 
} �
qC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Shared\Messages\User\In\RequestCreateUser.cs
	namespace 	

AkkaTicket
 
. 
Shared 
. 
Messages $
.$ %
User% )
.) *
In* ,
{ 
public 

sealed 
class 
RequestCreateUser )
{ 
public 
RequestCreateUser  
(  !
string! '
	requestId( 1
,1 2
string3 9
email: ?
,? @
stringA G
nameH L
,L M
stringN T
surnameU \
)\ ]
{ 	
EntityId 
= 
email 
; 
	RequestId '
=( )
	requestId* 3
;3 4
Email5 :
=; <
email= B
;B C
NameD H
=I J
nameK O
;O P
SurnameQ X
=Y Z
surname[ b
;b c
} 	
public		 
string		 
EntityId		 
{		  
get		! $
;		$ %
}		& '
public

 
string

 
	RequestId

 
{

  !
get

" %
;

% &
}

' (
public 
string 
Email 
{ 
get !
;! "
}# $
public 
string 
Name 
{ 
get  
;  !
}" #
public 
string 
Surname 
{ 
get  #
;# $
}% &
} 
} �
qC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Shared\Messages\User\In\RequestChangeUser.cs
	namespace 	

AkkaTicket
 
. 
Shared 
. 
Messages $
.$ %
User% )
.) *
In* ,
{ 
public 

sealed 
class 
RequestChangeUser )
{ 
public 
RequestChangeUser  
(  !
string! '
	requestId( 1
,1 2
string3 9
email: ?
,? @
stringA G
nameH L
,L M
stringN T
surnameU \
)\ ]
{ 	
EntityId 
= 
email 
; 
	RequestId (
=) *
	requestId+ 4
;4 5
Email6 ;
=< =
email> C
;C D
NameE I
=J K
nameL P
;P Q
SurnameR Y
=Z [
surname\ c
;c d
} 	
public		 
string		 
EntityId		 
{		  
get		! $
;		$ %
}		& '
public

 
string

 
	RequestId

 
{

  !
get

" %
;

% &
}

' (
public 
string 
Email 
{ 
get !
;! "
}# $
public 
string 
Name 
{ 
get  
;  !
}" #
public 
string 
Surname 
{ 
get  #
;# $
}% &
} 
} �
nC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Shared\Messages\User\Internal\UserData.cs
	namespace 	

AkkaTicket
 
. 
Shared 
. 
Messages $
.$ %
User% )
.) *
Internal* 2
{ 
public 

sealed 
class 
UserData  
{ 
public 
UserData 
( 
string 
	requestId (
,( )
string* 0
email1 6
)6 7
{ 	
	RequestId 
= 
	requestId !
;! "
Email 
= 
email 
; 
}		 	
public

 
string

 
	RequestId

 
{

  !
get

" %
;

% &
}

' (
public 
string 
Email 
{ 
get !
;! "
}# $
} 
} �
mC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Shared\Messages\User\Internal\Restore.cs
	namespace 	

AkkaTicket
 
. 
Shared 
. 
Messages $
.$ %
User% )
.) *
Internal* 2
{ 
public 

sealed 
class 
Restore 
{ 
} 
} �
nC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Shared\Messages\User\Internal\Register.cs
	namespace 	

AkkaTicket
 
. 
Shared 
. 
Messages $
.$ %
User% )
.) *
Internal* 2
{ 
public 

sealed 
class 
Register  
{ 
public 
Register 
( 
	IActorRef !
actor" '
,' (
string) /
email0 5
)5 6
{ 	
ActorRef		 
=		 
actor		 
;		 
Email

 
=

 
email

 
;

 
} 	
public 
	IActorRef 
ActorRef !
;! "
public 
string 
Email 
; 
} 
} �	
rC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Shared\Messages\User\Internal\ReadUserData.cs
	namespace 	

AkkaTicket
 
. 
Shared 
. 
Messages $
.$ %
User% )
.) *
Internal* 2
{ 
public 

class 
ReadUserData 
{ 
public 
ReadUserData 
( 
string "
	requestId# ,
,, -
string. 4
email5 :
): ;
{ 	
EntityId 
= 
email 
; 
	RequestId 
= 
	requestId !
;! "
Email		 
=		 
email		 
;		 
}

 	
public 
string 
EntityId 
{  
get! $
;$ %
}& '
public 
string 
	RequestId 
{  !
get" %
;% &
}' (
public 
string 
Email 
{ 
get !
;! "
}# $
} 
} �	
pC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Shared\Messages\User\Internal\Initialize.cs
	namespace 	

AkkaTicket
 
. 
Shared 
. 
Messages $
.$ %
User% )
.) *
Internal* 2
{ 
public 

sealed 
class 

Initialize "
{ 
public 

Initialize 
( 
string  
entityId! )
,) *
string+ 1
name2 6
,6 7
string8 >
surname? F
)F G
{ 	
EntityId 
= 
entityId 
;  
Name 
= 
name 
; 
Surname		 
=		 
surname		 
;		 
}

 	
public 
string 
EntityId 
{  
get! $
;$ %
}& '
public 
string 
Name 
{ 
get  
;  !
}" #
public 
string 
Surname 
{ 
get  #
;# $
}% &
} 
} �
�C:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Shared\Messages\Reservation\Out\RespondReservationDoesNotExist.cs
	namespace 	

AkkaTicket
 
. 
Shared 
. 
Messages $
.$ %
Reservation% 0
.0 1
Out1 4
{ 
public 

sealed 
class *
RespondReservationDoesNotExist 6
{ 
public *
RespondReservationDoesNotExist -
(- .
string. 4
	requestId5 >
)> ?
{ 	
	RequestId 
= 
	requestId !
;! "
} 	
public		 
string		 
	RequestId		 
{		  !
get		" %
;		% &
}		' (
}

 
} �
~C:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Shared\Messages\Reservation\Out\RespondReservationData.cs
	namespace 	

AkkaTicket
 
. 
Shared 
. 
Messages $
.$ %
Reservation% 0
.0 1
Out1 4
{ 
public 

sealed 
class "
RespondReservationData .
{ 
public "
RespondReservationData %
(% &
string& ,
	requestId- 6
,6 7
string8 >
reservationId? L
,L M
stringN T
statusU [
,[ \
string] c
eventIdd k
,k l
stringm s
seatIdt z
)z {
{ 	
	RequestId 
= 
	requestId !
;! "
ReservationId 
= 
reservationId )
;) *
Status		 
=		 
status		 
;		 
EventId

 
=

 
eventId

 
;

 
SeatId 
= 
seatId 
; 
} 	
public 
string 
	RequestId 
{  !
get" %
;% &
}' (
public 
string 
ReservationId #
{$ %
get& )
;) *
}+ ,
public 
string 
Status 
{ 
get "
;" #
}$ %
public 
string 
EventId 
{ 
get  #
;# $
}% &
public 
string 
SeatId 
{ 
get "
;" #
}$ %
} 
} �
�C:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Shared\Messages\Reservation\Out\RespondReservationCreated.cs
	namespace 	

AkkaTicket
 
. 
Shared 
. 
Messages $
.$ %
Reservation% 0
.0 1
Out1 4
{ 
public 

sealed 
class %
RespondReservationCreated 1
{ 
public %
RespondReservationCreated (
(( )
string) /
	requestId0 9
,9 :
string; A
reservationIdB O
)O P
{ 	
	RequestId 
= 
	requestId !
;! "
ReservationId 
= 
reservationId )
;) *
}		 	
public 
string 
	RequestId 
{  !
get" %
;% &
}' (
public 
string 
ReservationId #
{$ %
get& )
;) *
}+ ,
} 
} �
�C:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Shared\Messages\Reservation\Out\RespondReservationCancelled.cs
	namespace 	

AkkaTicket
 
. 
Shared 
. 
Messages $
.$ %
Reservation% 0
.0 1
Out1 4
{ 
public 

sealed 
class '
RespondReservationCancelled 3
{ 
public '
RespondReservationCancelled *
(* +
string+ 1
	requestId2 ;
,; <
string= C
reservationIdD Q
)Q R
{ 	
	RequestId 
= 
	requestId !
;! "
ReservationId 
= 
reservationId )
;) *
}		 	
public 
string 
	RequestId 
{  !
get" %
;% &
}' (
public 
string 
ReservationId #
{$ %
get& )
;) *
}+ ,
} 
} �
�C:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Shared\Messages\Reservation\In\RequestReadReservationData.cs
	namespace 	

AkkaTicket
 
. 
Shared 
. 
Messages $
.$ %
Reservation% 0
.0 1
In1 3
{ 
public 

sealed 
class &
RequestReadReservationData 2
{ 
public &
RequestReadReservationData )
() *
string* 0
	requestId1 :
,: ;
string< B
reservationIdC P
)P Q
{ 	
	RequestId 
= 
	requestId !
;! "
ReservationId 
= 
reservationId )
;) *
}		 	
public

 
string

 
	RequestId

 
{

  !
get

" %
;

% &
}

' (
public 
string 
ReservationId #
{$ %
get& )
;) *
}+ ,
} 
} �
C:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Shared\Messages\Reservation\In\RequestCancelReservation.cs
	namespace 	

AkkaTicket
 
. 
Shared 
. 
Messages $
.$ %
Reservation% 0
.0 1
In1 3
{ 
public 

sealed 
class $
RequestCancelReservation 0
{ 
public $
RequestCancelReservation '
(' (
string( .
	requestId/ 8
,8 9
string: @
reservationIdA N
)N O
{ 	
	RequestId 
= 
	requestId !
;! "
ReservationId 
= 
reservationId )
;) *
}		 	
public

 
string

 
	RequestId

 
{

  !
get

" %
;

% &
}

' (
public 
string 
ReservationId #
{$ %
get& )
;) *
}+ ,
} 
} �

C:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Shared\Messages\Reservation\Internal\ReservationRequest.cs
	namespace 	

AkkaTicket
 
. 
Shared 
. 
Messages $
.$ %
Reservation% 0
.0 1
Internal1 9
{ 
public 

sealed 
class 
ReservationRequest *
{ 
public 
ReservationRequest !
(! "
string" (
	requestId) 2
,2 3
string4 :
seatId; A
,A B
	IActorRefC L
reservationActorRefM `
)` a
{ 	
	RequestId		 
=		 
	requestId		 !
;		! "
SeatId

 
=

 
seatId

 
;

 
ReservationActorRef 
=  !
reservationActorRef" 5
;5 6
} 	
public 
string 
	RequestId 
{  !
get" %
;% &
}' (
public 
string 
SeatId 
{ 
get "
;" #
}$ %
public 
	IActorRef 
ReservationActorRef ,
{- .
get/ 2
;2 3
}4 5
} 
} �
�C:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Shared\Messages\Reservation\Internal\ReservationDeclination.cs
	namespace 	

AkkaTicket
 
. 
Shared 
. 
Messages $
.$ %
Reservation% 0
.0 1
Internal1 9
{ 
public 

sealed 
class "
ReservationDeclination .
{ 
public "
ReservationDeclination %
(% &
string& ,
	requestId- 6
)6 7
{ 	
	RequestId 
= 
	requestId !
;! "
} 	
public		 
string		 
	RequestId		 
{		  !
get		" %
;		% &
}		' (
}

 
} �
C:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Shared\Messages\Reservation\Internal\ReservationCreated.cs
	namespace 	

AkkaTicket
 
. 
Shared 
. 
Messages $
.$ %
Reservation% 0
.0 1
Internal1 9
{ 
public 

sealed 
class 
ReservationCreated *
{ 
public 
ReservationCreated !
(! "
string" (
	requestId) 2
,2 3
string4 :
reservationId; H
,H I
stringJ P
emailQ V
)V W
{ 	
EntityId 
= 
email 
; 
	RequestId 
= 
	requestId !
;! "
ReservationId		 
=		 
reservationId		 )
;		) *
Email

 
=

 
email

 
;

 
} 	
public 
string 
EntityId 
{  
get! $
;$ %
}& '
public 
string 
	RequestId 
{  !
get" %
;% &
}' (
public 
string 
ReservationId #
{$ %
get& )
;) *
}+ ,
public 
string 
Email 
{ 
get !
;! "
}# $
} 
} �
�C:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Shared\Messages\Reservation\Internal\ReservationConfirmation.cs
	namespace 	

AkkaTicket
 
. 
Shared 
. 
Messages $
.$ %
Reservation% 0
.0 1
Internal1 9
{ 
public 

sealed 
class #
ReservationConfirmation /
{ 
public #
ReservationConfirmation &
(& '
string' -
	requestId. 7
,7 8
string9 ?
seatId@ F
)F G
{ 	
	RequestId 
= 
	requestId !
;! "
SeatId 
= 
seatId 
; 
}		 	
public

 
string

 
	RequestId

 
{

  !
get

" %
;

% &
}

' (
public 
string 
SeatId 
{ 
get "
;" #
}$ %
} 
} �

�C:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Shared\Messages\Reservation\Internal\ReservationCancelled.cs
	namespace 	

AkkaTicket
 
. 
Shared 
. 
Messages $
.$ %
Reservation% 0
.0 1
Internal1 9
{ 
public 

sealed 
class  
ReservationCancelled ,
{ 
public  
ReservationCancelled #
(# $
string$ *
	requestId+ 4
,4 5
string6 <
reservationId= J
,J K
stringL R
emailS X
)X Y
{ 	
	RequestId 
= 
	requestId !
;! "
ReservationId 
= 
reservationId )
;) *
Email		 
=		 
email		 
;		 
}

 	
public 
string 
	RequestId 
{  !
get" %
;% &
}' (
public 
string 
ReservationId #
{$ %
get& )
;) *
}+ ,
public 
string 
Email 
{ 
get !
;! "
}# $
} 
} �
nC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Shared\Messages\Other\ExchangeCurrency.cs
	namespace 	

AkkaTicket
 
. 
Shared 
. 
Messages $
.$ %
Other% *
{ 
public 

sealed 
class 
ExchangeCurrency (
{ 
public 
ExchangeCurrency 
(  
string  &
currency' /
,/ 0
double1 7
amount8 >
)> ?
{ 	
Currency 
= 
currency 
;  
Amount 
= 
amount 
; 
}		 	
public

 
string

 
Currency

 
{

  
get

! $
;

$ %
}

& '
public 
double 
Amount 
{ 
get "
;" #
}$ %
} 
} �
oC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Shared\Messages\Other\CollectionTimeout.cs
	namespace 	

AkkaTicket
 
. 
Shared 
. 
Messages $
.$ %
Other% *
{ 
public 

sealed 
class 
CollectionTimeout )
{ 
public 
static 
CollectionTimeout '
Instance( 0
{1 2
get3 6
;6 7
}8 9
=: ;
new< ?
(? @
)@ A
;A B
private 
CollectionTimeout !
(! "
)" #
{$ %
}& '
} 
} �
yC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Shared\Messages\Event\Out\RespondSeatDoesNotExist.cs
	namespace 	

AkkaTicket
 
. 
Shared 
. 
Messages $
.$ %
Event% *
.* +
Out+ .
{ 
public 

sealed 
class #
RespondSeatDoesNotExist /
{ 
public #
RespondSeatDoesNotExist &
(& '
string' -
	requestId. 7
)7 8
{ 	
	RequestId 
= 
	requestId !
;! "
} 	
public		 
string		 
	RequestId		 
{		  !
get		" %
;		% &
}		' (
}

 
} �
sC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Shared\Messages\Event\Out\RespondEventsData.cs
	namespace 	

AkkaTicket
 
. 
Shared 
. 
Messages $
.$ %
Event% *
.* +
Out+ .
{ 
public 

sealed 
class 
RespondEventsData )
{ 
public 
RespondEventsData  
(  !
string! '
	requestId( 1
,1 2
List3 7
<7 8
	EventData8 A
>A B
eventsC I
)I J
{ 	
	RequestId 
= 
	requestId !
;! "
Events 
= 
events 
; 
}		 	
public

 
string

 
	RequestId

 
;

  
public 
List 
< 
	EventData 
> 
Events %
;% &
public 
class 
	EventData 
{ 	
public 
	EventData 
( 
string #
id$ &
,& '
string( .
name/ 3
)3 4
{ 
Id 
= 
id 
; 
Name 
= 
name 
; 
} 
public 
string 
Id 
; 
public 
string 
Name 
; 
} 	
} 
} �
zC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Shared\Messages\Event\Out\RespondEventDoesNotExist.cs
	namespace 	

AkkaTicket
 
. 
Shared 
. 
Messages $
.$ %
Event% *
.* +
Out+ .
{ 
public 

sealed 
class $
RespondEventDoesNotExist 0
{ 
public $
RespondEventDoesNotExist '
(' (
string( .
	requestId/ 8
)8 9
{ 	
	RequestId 
= 
	requestId !
;! "
} 	
public		 
string		 
	RequestId		 
{		  !
get		" %
;		% &
}		' (
}

 
} �
rC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Shared\Messages\Event\Out\RespondEventData.cs
	namespace 	

AkkaTicket
 
. 
Shared 
. 
Messages $
.$ %
Event% *
.* +
Out+ .
{ 
public 

sealed 
class 
RespondEventData (
{ 
public 
RespondEventData 
(  
string  &
	requestId' 0
,0 1
string2 8
id9 ;
,; <
string= C
nameD H
,H I
doubleJ P
durationQ Y
,Y Z
string[ a
locationb j
,j k
DateTimel t
dateu y
,y z
string	{ �
status
� �
,
� �
int
� �
seatsAmount
� �
,
� �
int
� �"
availableSeatsAmount
� �
,
� �
List
� �
<
� �
Seat
� �
>
� �
seats
� �
,
� �
double
� �
cheapestPrice
� �
)
� �
{ 	
	RequestId		 
=		 
	requestId		 !
;		! "
Id

 
=

 
id

 
;

 
Name 
= 
name 
; 
Duration 
= 
duration 
;  
Location 
= 
location 
;  
Date 
= 
date 
; 
Status 
= 
status 
; 
SeatsAmount 
= 
seatsAmount %
;% & 
AvailableSeatsAmount  
=! " 
availableSeatsAmount# 7
;7 8
Seats 
= 
seats 
; 
CheapestPrice 
= 
cheapestPrice )
;) *
} 	
public 
string 
	RequestId 
{  !
get" %
;% &
}' (
public 
string 
Id 
{ 
get 
; 
}  !
public 
string 
Name 
{ 
get  
;  !
}" #
public 
double 
Duration 
{  
get! $
;$ %
}& '
public 
string 
Location 
{  
get! $
;$ %
}& '
public 
DateTime 
Date 
{ 
get "
;" #
}$ %
public 
string 
Status 
{ 
get "
;" #
}$ %
public 
int 
SeatsAmount 
{  
get! $
;$ %
}& '
public 
int  
AvailableSeatsAmount '
{( )
get* -
;- .
}/ 0
public 
List 
< 
Seat 
> 
Seats 
{  !
get" %
;% &
}' (
public 
double 
CheapestPrice #
{$ %
get& )
;) *
}+ ,
}   
}!! �
uC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Shared\Messages\Event\Out\RespondEventCreated.cs
	namespace 	

AkkaTicket
 
. 
Shared 
. 
Messages $
.$ %
Event% *
.* +
Out+ .
{ 
public 

sealed 
class 
RespondEventCreated +
{ 
public 
RespondEventCreated "
(" #
string# )
	requestId* 3
,3 4
string5 ;
eventId< C
)C D
{ 	
	RequestId 
= 
	requestId !
;! "
EventId 
= 
eventId 
; 
}		 	
public 
string 
	RequestId 
{  !
get" %
;% &
}' (
public 
string 
EventId 
{ 
get  #
;# $
}% &
} 
} �
wC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Shared\Messages\Event\Out\RespondEventCancelled.cs
	namespace 	

AkkaTicket
 
. 
Shared 
. 
Messages $
.$ %
Event% *
.* +
Out+ .
{ 
public 

sealed 
class !
RespondEventCancelled -
{ 
public !
RespondEventCancelled $
($ %
string% +
	requestId, 5
,5 6
string7 =
eventId> E
)E F
{ 	
	RequestId 
= 
	requestId !
;! "
EventId 
= 
eventId 
; 
}		 	
public 
string 
	RequestId 
{  !
get" %
;% &
}' (
public 
string 
EventId 
{ 
get  #
;# $
}% &
} 
} �
sC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Shared\Messages\Event\In\RequestReserveSeat.cs
	namespace 	

AkkaTicket
 
. 
Shared 
. 
Messages $
.$ %
Event% *
.* +
In+ -
{ 
public 

sealed 
class 
RequestReserveSeat *
{ 
public 
RequestReserveSeat !
(! "
string" (
	requestId) 2
,2 3
string4 :
eventId; B
,B C
stringD J
seatIdK Q
,Q R
stringS Y
	userEmailZ c
)c d
{ 	
	RequestId 
= 
	requestId !
;! "
EventId 
= 
eventId 
; 
SeatId		 
=		 
seatId		 
;		 
	UserEmail

 
=

 
	userEmail

 !
;

! "
} 	
public 
string 
	RequestId 
{  !
get" %
;% &
}' (
public 
string 
EventId 
{ 
get  #
;# $
}% &
public 
string 
SeatId 
{ 
get "
;" #
}$ %
public 
string 
	UserEmail 
{  !
get" %
;% &
}' (
} 
} �
rC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Shared\Messages\Event\In\RequestReadEvents.cs
	namespace 	

AkkaTicket
 
. 
Shared 
. 
Messages $
.$ %
Event% *
.* +
In+ -
{ 
public 

sealed 
class 
RequestReadEvents )
{ 
public 
RequestReadEvents  
(  !
string! '
	requestId( 1
,1 2
string3 9
name: >
)> ?
{ 	
	RequestId 
= 
	requestId !
;! "
Name 
= 
name 
; 
}		 	
public

 
string

 
	RequestId

 
{

  !
get

" %
;

% &
}

' (
public 
string 
Name 
{ 
get  
;  !
}" #
} 
} �

uC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Shared\Messages\Event\In\RequestReadEventData.cs
	namespace 	

AkkaTicket
 
. 
Shared 
. 
Messages $
.$ %
Event% *
.* +
In+ -
{ 
public 

sealed 
class  
RequestReadEventData ,
{ 
public  
RequestReadEventData #
(# $
string$ *
	requestId+ 4
,4 5
string6 <
eventId= D
,D E
stringF L
currencyM U
)U V
{ 	
	RequestId 
= 
	requestId !
;! "
EventId 
= 
eventId 
; 
Currency		 
=		 
currency		 
;		  
}

 	
public 
string 
	RequestId 
{  !
get" %
;% &
}' (
public 
string 
EventId 
{ 
get  #
;# $
}% &
public 
string 
Currency 
{  
get! $
;$ %
}& '
} 
} �
sC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Shared\Messages\Event\In\RequestCreateEvent.cs
	namespace 	

AkkaTicket
 
. 
Shared 
. 
Messages $
.$ %
Event% *
.* +
In+ -
{ 
public 

sealed 
class 
RequestCreateEvent *
{ 
public 
RequestCreateEvent !
(! "
string" (
	requestId) 2
,2 3
string4 :
name; ?
,? @
doubleA G
durationH P
,P Q
stringR X
locationY a
,a b
DateTimec k
datel p
,p q
Listr v
<v w
CreateSeatData	w �
>
� �
seats
� �
)
� �
{ 	
	RequestId 
= 
	requestId !
;! "
Name 
= 
name 
; 
Duration		 
=		 
duration		 
;		  
Location

 
=

 
location

 
;

  
Date 
= 
date 
; 
Seats 
= 
seats 
; 
} 	
public 
string 
	RequestId 
{  !
get" %
;% &
}' (
public 
string 
Name 
{ 
get  
;  !
}" #
public 
double 
Duration 
{  
get! $
;$ %
}& '
public 
string 
Location 
{  
get! $
;$ %
}& '
public 
DateTime 
Date 
{ 
get "
;" #
}$ %
public 
List 
< 
CreateSeatData "
>" #
Seats$ )
{* +
get, /
;/ 0
}1 2
} 
} �
sC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Shared\Messages\Event\In\RequestChangeEvent.cs
	namespace 	

AkkaTicket
 
. 
Shared 
. 
Messages $
.$ %
Event% *
.* +
In+ -
{ 
public 

sealed 
class 
RequestChangeEvent *
{ 
public 
RequestChangeEvent !
(! "
string" (
	requestId) 2
,2 3
string4 :
eventId; B
,B C
stringD J
nameK O
,O P
doubleQ W
durationX `
,` a
stringb h
locationi q
,q r
DateTimes {
date	| �
)
� �
{ 	
	RequestId 
= 
	requestId !
;! "
EventId 
= 
eventId 
; 
Name		 
=		 
name		 
;		 
Duration

 
=

 
duration

 
;

  
Location 
= 
location 
;  
Date 
= 
date 
; 
} 	
public 
string 
	RequestId 
{  !
get" %
;% &
}' (
public 
string 
EventId 
{ 
get  #
;# $
}% &
public 
string 
Name 
{ 
get  
;  !
}" #
public 
double 
Duration 
{  
get! $
;$ %
}& '
public 
string 
Location 
{  
get! $
;$ %
}& '
public 
DateTime 
Date 
{ 
get "
;" #
}$ %
} 
} �
sC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Shared\Messages\Event\In\RequestCancelEvent.cs
	namespace 	

AkkaTicket
 
. 
Shared 
. 
Messages $
.$ %
Event% *
.* +
In+ -
{ 
public 

sealed 
class 
RequestCancelEvent *
{ 
public 
RequestCancelEvent !
(! "
string" (
	requestId) 2
,2 3
string4 :
eventId; B
)B C
{ 	
	RequestId		 
=		 
	requestId		 !
;		! "
EventId

 
=

 
eventId

 
;

 
} 	
public 
string 
	RequestId 
{  !
get" %
;% &
}' (
public 
string 
EventId 
{ 
get  #
;# $
}% &
} 
} �
oC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Shared\Messages\Event\In\CreateSeatData.cs
	namespace 	

AkkaTicket
 
. 
Shared 
. 
Messages $
.$ %
Event% *
.* +
In+ -
{ 
public 

sealed 
class 
CreateSeatData &
{ 
public 
CreateSeatData 
( 
double $
price% *
)* +
{ 	
Price 
= 
price 
; 
} 	
public		 
double		 
Price		 
{		 
get		 !
;		! "
}		# $
}

 
} �
tC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Shared\Messages\Event\Internal\ReadEventData.cs
	namespace 	

AkkaTicket
 
. 
Shared 
. 
Messages $
.$ %
Event% *
.* +
Internal+ 3
{ 
public 

sealed 
class 
ReadEventData %
{ 
public 
ReadEventData 
( 
string #
	requestId$ -
)- .
{ 	
	RequestId 
= 
	requestId !
;! "
} 	
public		 
string		 
	RequestId		 
;		  
}

 
} �
rC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Shared\Messages\Event\Internal\EventSearch.cs
	namespace 	

AkkaTicket
 
. 
Shared 
. 
Messages $
.$ %
Event% *
.* +
Internal+ 3
{ 
public 

sealed 
class 
EventSearch #
{ 
public 
EventSearch 
( 

Dictionary %
<% &
	IActorRef& /
,/ 0
string1 7
>7 8
actorToEventId9 G
,G H
stringI O
	requestIdP Y
,Y Z
	IActorRef[ d
sendere k
,k l
TimeSpanm u
timeSpanv ~
,~ 

EventQuery
� �
.
� �

Parameters
� �

parameters
� �
)
� �
{		 	
ActorToEventId

 
=

 
actorToEventId

 +
;

+ ,
	RequestId 
= 
	requestId !
;! "
Sender 
= 
sender 
; 
TimeSpan 
= 
timeSpan 
;  

Parameters 
= 

parameters #
;# $
} 	
public 

Dictionary 
< 
	IActorRef #
,# $
string% +
>+ ,
ActorToEventId- ;
{< =
get> A
;A B
}C D
public 
string 
	RequestId 
{  !
get" %
;% &
}' (
public 
	IActorRef 
Sender 
{  !
get" %
;% &
}' (
public 
TimeSpan 
TimeSpan  
{! "
get# &
;& '
}( )
public 

EventQuery 
. 

Parameters $

Parameters% /
{0 1
get2 5
;5 6
}7 8
} 
} �
pC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Shared\Messages\Event\Internal\EventInfo.cs
	namespace 	

AkkaTicket
 
. 
Shared 
. 
Messages $
.$ %
Event% *
.* +
Internal+ 3
{ 
public 

sealed 
class 
	EventInfo !
{ 
public 
	EventInfo 
( 
	IActorRef "

eventActor# -
,- .
string/ 5
id6 8
)8 9
{ 	

EventActor		 
=		 

eventActor		 #
;		# $
Id

 
=

 
id

 
;

 
} 	
public 
	IActorRef 

EventActor #
{$ %
get& )
;) *
}+ ,
public 
string 
Id 
{ 
get 
; 
}  !
} 
} �
pC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Shared\Messages\Event\Internal\EventData.cs
	namespace 	

AkkaTicket
 
. 
Shared 
. 
Messages $
.$ %
Event% *
.* +
Internal+ 3
{ 
public 

class 
	EventData 
{ 
public 
	EventData 
( 
string 
	requestId  )
,) *
string+ 1
id2 4
,4 5
string6 <
name= A
,A B
doubleC I
durationJ R
,R S
stringT Z
location[ c
,c d
DateTimee m
daten r
,r s
stringt z
status	{ �
,
� �
int
� �
seatsAmount
� �
,
� �
int
� �"
availableSeatsAmount
� �
,
� �
List
� �
<
� �
Seat
� �
>
� �
seats
� �
)
� �
{ 	
	RequestId		 
=		 
	requestId		 !
;		! "
Id

 
=

 
id

 
;

 
Name 
= 
name 
; 
Duration 
= 
duration 
;  
Location 
= 
location 
;  
Date 
= 
date 
; 
Status 
= 
status 
; 
SeatsAmount 
= 
seatsAmount %
;% & 
AvailableSeatsAmount  
=! " 
availableSeatsAmount# 7
;7 8
Seats 
= 
seats 
; 
} 	
public 
string 
	RequestId 
{  !
get" %
;% &
}' (
public 
string 
Id 
{ 
get 
; 
}  !
public 
string 
Name 
{ 
get  
;  !
}" #
public 
double 
Duration 
{  
get! $
;$ %
}& '
public 
string 
Location 
{  
get! $
;$ %
}& '
public 
DateTime 
Date 
{ 
get "
;" #
}$ %
public 
string 
Status 
{ 
get "
;" #
}$ %
public 
int 
SeatsAmount 
{  
get! $
;$ %
}& '
public 
int  
AvailableSeatsAmount '
{( )
get* -
;- .
}/ 0
public 
List 
< 
Seat 
> 
Seats 
{  !
get" %
;% &
}' (
} 
} �
sC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Shared\Messages\Event\Internal\EventChanged.cs
	namespace 	

AkkaTicket
 
. 
Shared 
. 
Messages $
.$ %
Event% *
.* +
Internal+ 3
{ 
public 

sealed 
class 
EventChanged $
{ 
public 
EventChanged 
( 
string "
	requestId# ,
), -
{ 	
	RequestId 
= 
	requestId !
;! "
} 	
public		 
string		 
	RequestId		 
{		  !
get		" %
;		% &
}		' (
}

 
} �
uC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Shared\Messages\Event\Internal\EventCancelled.cs
	namespace 	

AkkaTicket
 
. 
Shared 
. 
Messages $
.$ %
Event% *
.* +
Internal+ 3
{ 
public 

sealed 
class 
EventCancelled &
{ 
public 
EventCancelled 
( 
string $
	requestID% .
). /
{ 	
	RequestID 
= 
	requestID !
;! "
} 	
public

 
string

 
	RequestID

 
{

  !
get

" %
;

% &
}

' (
} 
} �U
[C:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Service\AkkaService.cs
	namespace 	

AkkaTicket
 
. 
Service 
{ 
public 

class 
AkkaService 
: 
IHostedService ,
,, -
IActorBridge. :
{ 
private 
ActorSystem 
_actorSystem (
;( )
private 
readonly 
IConfiguration '
_configuration( 6
;6 7
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
private 
	IActorRef 
	_actorRef #
;# $
private 
readonly $
IHostApplicationLifetime 1 
_applicationLifetime2 F
;F G
public 
AkkaService 
( 
IServiceProvider +
serviceProvider, ;
,; <$
IHostApplicationLifetime= U
appLifetimeV a
,a b
IConfigurationc q
configurationr 
)	 �
{ 	
_serviceProvider 
= 
serviceProvider .
;. / 
_applicationLifetime  
=! "
appLifetime# .
;. /
_configuration 
= 
configuration *
;* +
} 	
public 
async 
Task 

StartAsync $
($ %
CancellationToken% 6
cancellationToken7 H
)H I
{ 	
var   
	bootstrap   
=   
BootstrapSetup   *
.  * +
Create  + 1
(  1 2
)  2 3
.  3 4

WithConfig  4 >
(  > ? 
ConfigurationFactory!! $
.!!$ %
ParseString!!% 0
(!!0 1
$str!I1 
)II 
)II 
;II 
varLL 
diSetupLL 
=LL #
DependencyResolverSetupLL 1
.LL1 2
CreateLL2 8
(LL8 9
_serviceProviderLL9 I
)LLI J
;LLJ K
varOO 
actorSystemSetupOO  
=OO! "
	bootstrapOO# ,
.OO, -
AndOO- 0
(OO0 1
diSetupOO1 8
)OO8 9
;OO9 :
_actorSystemSS 
=SS 
ActorSystemSS &
.SS& '
CreateSS' -
(SS- .
$strSS. 9
,SS9 :
actorSystemSetupSS; K
)SSK L
;SSL M
varUU 
regionUU 
=UU 
ClusterShardingUU (
.UU( )
GetUU) ,
(UU, -
_actorSystemUU- 9
)UU9 :
.UU: ;
StartUU; @
(UU@ A
typeNameVV 
:VV 
typeofVV  
(VV  !
UserVV! %
)VV% &
.VV& '
NameVV' +
,VV+ ,
entityPropsFactoryWW "
:WW" #
sWW$ %
=>WW& (
PropsWW) .
.WW. /
CreateWW/ 5
(WW5 6
(WW6 7
)WW7 8
=>WW9 ;
newWW< ?
UserWW@ D
(WWD E
sWWE F
)WWF G
)WWG H
,WWH I
settingsXX 
:XX #
ClusterShardingSettingsXX 1
.XX1 2
CreateXX2 8
(XX8 9
_actorSystemXX9 E
)XXE F
,XXF G
messageExtractorYY  
:YY  !
newYY" %
MessageExtractorYY& 6
(YY6 7
$numYY7 8
)YY8 9
)YY9 :
;YY: ;
	_actorRef[[ 
=[[ 
_actorSystem[[ $
.[[$ %
ActorOf[[% ,
([[, -
TicketingSupervisor[[- @
.[[@ A
Props[[A F
([[F G
region[[G M
)[[M N
,[[N O
$str[[P [
)[[[ \
;[[\ ]
var]] 
routerProps]] 
=]] 
new]] !
ClusterRouterPool]]" 3
(]]3 4
new]]4 7
RoundRobinPool]]8 F
(]]F G
$num]]G H
)]]H I
,]]I J
new]]K N%
ClusterRouterPoolSettings]]O h
(]]h i
$num]]i j
,]]j k
$num]]l m
,]]m n
true]]o s
)]]s t
)]]t u
.]]u v
Props]]v {
(]]{ |
CurrencyExchange	]]| �
.
]]� �
Props
]]� �
(
]]� �
)
]]� �
)
]]� �
;
]]� �
var__ 
router__ 
=__ 
_actorSystem__ %
.__% &
ActorOf__& -
(__- .
routerProps__. 9
,__9 :
$str__; S
)__S T
;__T U
_actorSystemff 
.ff 
WhenTerminatedff '
.ff' (
ContinueWithff( 4
(ff4 5
_ff5 6
=>ff7 9
{ff: ; 
_applicationLifetimegg $
.gg$ %
StopApplicationgg% 4
(gg4 5
)gg5 6
;gg6 7
}hh 
)hh 
;hh 
awaitjj 
Taskjj 
.jj 
CompletedTaskjj $
;jj$ %
}kk 	
publicmm 
asyncmm 
Taskmm 
	StopAsyncmm #
(mm# $
CancellationTokenmm$ 5
cancellationTokenmm6 G
)mmG H
{nn 	
awaitqq 
CoordinatedShutdownqq %
.qq% &
Getqq& )
(qq) *
_actorSystemqq* 6
)qq6 7
.qq7 8
Runqq8 ;
(qq; <
CoordinatedShutdownqq< O
.qqO P
ClrExitReasonqqP ]
.qq] ^
Instanceqq^ f
)qqf g
;qqg h
}rr 	
publictt 
voidtt 
Telltt 
(tt 
objecttt 
messagett  '
)tt' (
{uu 	
	_actorRefvv 
.vv 
Tellvv 
(vv 
messagevv "
)vv" #
;vv# $
}ww 	
publicyy 
Taskyy 
<yy 
Tyy 
>yy 
Askyy 
<yy 
Tyy 
>yy 
(yy 
objectyy $
messageyy% ,
)yy, -
{zz 	
return{{ 
	_actorRef{{ 
.{{ 
Ask{{  
<{{  !
T{{! "
>{{" #
({{# $
message{{$ +
){{+ ,
;{{, -
}|| 	
public~~ 
sealed~~ 
class~~ 
MessageExtractor~~ ,
:~~- .
IMessageExtractor~~/ @
{ 	
private
�� 
readonly
�� 
int
��  
_numberOfShards
��! 0
;
��0 1
public
�� 
MessageExtractor
�� #
(
��# $
int
��$ '
numberOfShards
��( 6
)
��6 7
{
�� 
_numberOfShards
�� 
=
��  !
numberOfShards
��" 0
;
��0 1
}
�� 
public
�� 
string
�� 
?
�� 
EntityId
�� #
(
��# $
object
��$ *
message
��+ 2
)
��2 3
{
�� 
return
�� 
(
�� 
message
�� 
as
��  "
dynamic
��# *
)
��* +
?
��+ ,
.
��, -
EntityId
��- 5
.
��5 6
ToString
��6 >
(
��> ?
)
��? @
;
��@ A
}
�� 
public
�� 
object
�� 
?
�� 
EntityMessage
�� (
(
��( )
object
��) /
message
��0 7
)
��7 8
{
�� 
return
�� 
message
�� 
;
�� 
}
�� 
public
�� 
string
�� 
?
�� 
ShardId
�� "
(
��" #
object
��# )
message
��* 1
)
��1 2
{
�� 
var
�� 
entityId
�� 
=
�� 
this
�� #
.
��# $
EntityId
��$ ,
(
��, -
message
��- 4
)
��4 5
;
��5 6
if
�� 
(
�� 
entityId
�� 
==
�� 
null
��  $
)
��$ %
return
��& ,
$str
��- 0
;
��0 1
var
�� 
shardId
�� 
=
�� 
Math
�� "
.
��" #
Abs
��# &
(
��& '
GetHashCode
��' 2
(
��2 3
entityId
��3 ;
)
��; <
)
��< =
%
��> ?
_numberOfShards
��@ O
;
��O P
return
�� 
shardId
�� 
.
�� 
ToString
�� '
(
��' (
)
��( )
;
��) *
}
�� 
public
�� 
string
�� 
ShardId
�� !
(
��! "
string
��" (
entityId
��) 1
,
��1 2
object
��3 9
?
��9 :
messageHint
��; F
=
��G H
null
��I M
)
��M N
{
�� 
if
�� 
(
�� 
entityId
�� 
==
�� 
null
��  $
)
��$ %
return
��& ,
$str
��- 0
;
��0 1
var
�� 
shardId
�� 
=
�� 
Math
�� "
.
��" #
Abs
��# &
(
��& '
GetHashCode
��' 2
(
��2 3
entityId
��3 ;
)
��; <
)
��< =
%
��> ?
_numberOfShards
��@ O
;
��O P
return
�� 
shardId
�� 
.
�� 
ToString
�� '
(
��' (
)
��( )
;
��) *
}
�� 
private
�� 
int
�� 
GetHashCode
�� #
(
��# $
string
��$ *
data
��+ /
)
��/ 0
{
�� 
using
�� 
(
�� '
SHA1CryptoServiceProvider
�� 0
sha1
��1 5
=
��6 7
new
��8 ;'
SHA1CryptoServiceProvider
��< U
(
��U V
)
��V W
)
��W X
{
�� 
byte
�� 
[
�� 
]
�� 

inputBytes
�� %
=
��& '
Encoding
��( 0
.
��0 1
UTF8
��1 5
.
��5 6
GetBytes
��6 >
(
��> ?
data
��? C
)
��C D
;
��D E
byte
�� 
[
�� 
]
�� 
	hashBytes
�� $
=
��% &
sha1
��' +
.
��+ ,
ComputeHash
��, 7
(
��7 8

inputBytes
��8 B
)
��B C
;
��C D
int
�� 
hash
�� 
=
�� 
BitConverter
�� +
.
��+ ,
ToInt32
��, 3
(
��3 4
	hashBytes
��4 =
,
��= >
$num
��? @
)
��@ A
;
��A B
return
�� 
hash
�� 
;
��  
}
�� 
}
�� 
}
�� 	
}
�� 
}�� �
OC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Program.cs
var 
builder 
= 
WebApplication 
. 
CreateBuilder *
(* +
args+ /
)/ 0
;0 1
builder 
. 
Services 
. 
AddControllers 
(  
)  !
;! "
builder

 
.

 
Services

 
.

 #
AddEndpointsApiExplorer

 (
(

( )
)

) *
;

* +
builder 
. 
Services 
. 
AddSwaggerGen 
( 
)  
;  !
builder 
. 
Services 
. 
AddSingleton 
< 
IActorBridge *
,* +
AkkaService, 7
>7 8
(8 9
)9 :
;: ;
builder 
. 
Services 
. 
AddHostedService !
<! "
AkkaService" -
>- .
(. /
sp/ 1
=>2 4
(5 6
AkkaService6 A
)A B
spB D
.D E
GetRequiredServiceE W
<W X
IActorBridgeX d
>d e
(e f
)f g
)g h
;h i
var 
app 
= 	
builder
 
. 
Build 
( 
) 
; 
if 
( 
app 
. 
Environment 
. 
IsDevelopment !
(! "
)" #
)# $
{ 
app 
. 

UseSwagger 
( 
) 
; 
app 
. 
UseSwaggerUI 
( 
) 
; 
} 
app 
. 
UseAuthorization 
( 
) 
; 
app 
. 
MapControllers 
( 
) 
; 
app 
. 
Run 
( 
) 	
;	 
�
\C:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\DTO\GetEventsDataDTO.cs
	namespace 	

AkkaTicket
 
. 
DTO 
{ 
public 

sealed 
class 
GetEventsDataDTO (
{ 
public 
GetEventsDataDTO 
(  
List  $
<$ %
EventDTO% -
>- .
events/ 5
)5 6
{7 8
Events 
= 
events 
; 
} 	
public 
List 
< 
EventDTO 
> 
Events $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public		 
class		 
EventDTO		 
{

 	
public 
EventDTO 
( 
string "
id# %
,% &
string' -
name. 2
)2 3
{ 
Id 
= 
id 
; 
Name 
= 
name 
; 
} 
public 
string 
Id 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Name 
{  
get! $
;$ %
set& )
;) *
}* +
} 	
} 
} �

ZC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\DTO\UpdateEventDTO.cs
	namespace 	

AkkaTicket
 
. 
DTO 
{ 
public 

sealed 
class 
UpdateEventDTO &
{ 
public 
UpdateEventDTO 
( 
string $
name% )
,) *
double+ 1
duration2 :
,: ;
string< B
locationC K
,K L
DateTimeM U
dateV Z
)Z [
{ 	
Name 
= 
name 
; 
Duration 
= 
duration 
;  
Location		 
=		 
location		 
;		  
Date

 
=

 
date

 
;

 
} 	
public 
string 
Name 
{ 
get  
;  !
}" #
public 
double 
Duration 
{  
get! $
;$ %
}& '
public 
string 
Location 
{  
get! $
;$ %
}& '
public 
DateTime 
Date 
{ 
get "
;" #
}$ %
} 
} �
ZC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\DTO\GetUserDataDTO.cs
	namespace 	

AkkaTicket
 
. 
DTO 
{ 
public 

sealed 
class 
GetUserDataDTO &
{ 
public 
GetUserDataDTO 
( 
string $
email% *
,* +
string, 2
name3 7
,7 8
string9 ?
surname@ G
,G H
ListI M
<M N
stringN T
>T U
reservationsV b
)b c
{ 	
Email 
= 
email 
; 
Name 
=  !
name" &
;& '
Surname( /
=0 1
surname2 9
;9 :
Reservations; G
=H I
reservationsJ V
;V W
} 	
public		 
string		 
Email		 
{		 
get		 !
;		! "
}		# $
public

 
string

 
Name

 
{

 
get

  
;

  !
}

" #
public 
string 
Surname 
{ 
get  #
;# $
}% &
public 
List 
< 
string 
> 
Reservations )
{* +
get, /
;/ 0
}1 2
} 
} �

aC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\DTO\GetReservationDataDTO.cs
	namespace 	

AkkaTicket
 
. 
DTO 
{ 
public 

sealed 
class !
GetReservationDataDTO -
{ 
public !
GetReservationDataDTO $
($ %
string% +
id, .
,. /
string0 6
status7 =
,= >
string? E
eventIdF M
,M N
stringO U
seatIdV \
)\ ]
{ 	
Id 
= 
id 
; 
Status 
= 
status 
; 
EventId		 
=		 
eventId		 
;		 
SeatId

 
=

 
seatId

 
;

 
} 	
public 
string 
Id 
{ 
get 
; 
}  !
public 
string 
Status 
{ 
get "
;" #
}$ %
public 
string 
EventId 
{ 
get  #
;# $
}% &
public 
string 
SeatId 
{ 
get "
;" #
}$ %
} 
} �
[C:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\DTO\GetEventSeatDTO.cs
	namespace 	

AkkaTicket
 
. 
DTO 
{ 
public 

sealed 
class 
GetEventSeatDTO '
{ 
public 
GetEventSeatDTO 
( 
string %
id& (
,( )
double* 0
price1 6
)6 7
{ 	
Id 
= 
id 
; 
Price 
= 
price 
; 
}		 	
public

 
string

 
Id

 
{

 
get

 
;

  
}

! "
public 
double 
Price 
{ 
get !
;! "
}# $
} 
} �
YC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\DTO\UpdateUserDTO.cs
	namespace 	

AkkaTicket
 
. 
DTO 
{ 
public 

sealed 
class 
UpdateUserDTO %
{ 
public 
UpdateUserDTO 
( 
string #
name$ (
,( )
string* 0
surname1 8
)8 9
{ 	
Name 
= 
name 
; 
Surname  
=! "
surname# *
;* +
} 	
public		 
string		 
Name		 
{		 
get		  
;		  !
}		" #
public

 
string

 
Surname

 
{

 
get

  #
;

# $
}

% &
} 
} �
[C:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\DTO\GetEventDataDTO.cs
	namespace 	

AkkaTicket
 
. 
DTO 
{ 
public 

sealed 
class 
GetEventDataDTO '
{ 
public 
GetEventDataDTO 
( 
string %
id& (
,( )
string* 0
name1 5
,5 6
double7 =
duration> F
,F G
stringH N
locationO W
,W X
DateTimeY a
dateb f
,f g
stringh n
statuso u
,u v
intw z
seatsAmount	{ �
,
� �
int
� �"
availableSeatsAmount
� �
,
� �
List
� �
<
� �
GetEventSeatDTO
� �
> 
seats 
, 
double 
cheapestPrice )
)) *
{ 	
Id 
= 
id 
; 
Name		 
=		 
name		 
;		 
Duration

 
=

 
duration

 
;

  
Location 
= 
location 
;  
Date 
= 
date 
; 
SeatsAmount 
= 
seatsAmount %
;% & 
AvailableSeatsAmount  
=! " 
availableSeatsAmount# 7
;7 8

EventSeats 
= 
seats 
; 
Status 
= 
status 
; 
CheapestPrice 
= 
cheapestPrice )
;) *
} 	
public 
string 
Id 
{ 
get 
; 
}  !
public 
string 
Name 
{ 
get  
;  !
}" #
public 
double 
Duration 
{  
get! $
;$ %
}& '
public 
string 
Location 
{  
get! $
;$ %
}& '
public 
DateTime 
Date 
{ 
get "
;" #
}$ %
public 
string 
Status 
{ 
get "
;" #
}$ %
public 
int 
SeatsAmount 
{  
get! $
;$ %
}& '
public 
int  
AvailableSeatsAmount '
{( )
get* -
;- .
}/ 0
public 
List 
< 
GetEventSeatDTO #
># $

EventSeats% /
{0 1
get2 5
;5 6
}7 8
public 
double 
CheapestPrice #
{$ %
get& )
;) *
}+ ,
} 
} �
YC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\DTO\CreateUserDTO.cs
	namespace 	

AkkaTicket
 
. 
DTO 
{ 
public 

sealed 
class 
CreateUserDTO %
{ 
public 
CreateUserDTO 
( 
string #
email$ )
,) *
string+ 1
name2 6
,6 7
string8 >
surname? F
)F G
{ 	
Email 
= 
email 
; 
Name 
=  !
name" &
;& '
Surname( /
=0 1
surname2 9
;9 :
} 	
public		 
string		 
Email		 
{		 
get		 !
;		! "
}		# $
public

 
string

 
Name

 
{

 
get

  
;

  !
}

" #
public 
string 
Surname 
{ 
get  #
;# $
}% &
} 
} �
`C:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\DTO\CreateReservationDTO.cs
	namespace 	

AkkaTicket
 
. 
DTO 
{ 
public 

sealed 
class  
CreateReservationDTO ,
{ 
public  
CreateReservationDTO #
(# $
string$ *
email+ 0
)0 1
{ 	
Email 
= 
email 
; 
} 	
public		 
string		 
Email		 
{		 
get		 !
;		! "
}		# $
}

 
} �
^C:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\DTO\CreateEventSeatDTO.cs
	namespace 	

AkkaTicket
 
. 
DTO 
{ 
public 

sealed 
class 
CreateEventSeatDTO *
{ 
public 
CreateEventSeatDTO !
(! "
double" (
price) .
). /
{ 	
Price 
= 
price 
; 
} 	
public		 
double		 
Price		 
{		 
get		 !
;		! "
}		# $
}

 
} �
ZC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\DTO\CreateEventDTO.cs
	namespace 	

AkkaTicket
 
. 
DTO 
{ 
public 

sealed 
class 
CreateEventDTO &
{ 
public 
CreateEventDTO 
( 
string $
name% )
,) *
double+ 1
duration2 :
,: ;
string< B
locationC K
,K L
DateTimeM U
dateV Z
,Z [
List\ `
<` a
CreateEventSeatDTOa s
>s t
seatsu z
)z {
{ 	
Name 
= 
name 
; 
Duration 
= 
duration 
;  
Location		 
=		 
location		 
;		  
Date

 
=

 
date

 
;

 
Seats 
= 
seats 
; 
} 	
public 
string 
Name 
{ 
get  
;  !
}" #
public 
double 
Duration 
{  
get! $
;$ %
}& '
public 
string 
Location 
{  
get! $
;$ %
}& '
public 
DateTime 
Date 
{ 
get "
;" #
}$ %
public 
List 
< 
CreateEventSeatDTO &
>& '
Seats( -
{. /
get0 3
;3 4
}5 6
} 
} ߷
aC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Controllers\ApiController.cs
	namespace 	

AkkaTicket
 
. 
Controllers  
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
ApiController 
{ 
private 
readonly 
ILogger  
<  !
ApiController! .
>. /
_logger0 7
;7 8
private 
readonly 
IActorBridge %
_bridge& -
;- .
public 
ApiController 
( 
ILogger $
<$ %
ApiController% 2
>2 3
logger4 :
,: ;
IActorBridge< H
bridgeI O
)O P
{ 	
_logger 
= 
logger 
; 
_bridge 
= 
bridge 
; 
} 	
[ 	
HttpGet	 
( 
$str  
)  !
]! "
public 
async 
Task 
< 
Results !
<! "
NotFound" *
<* +
string+ 1
>1 2
,2 3
Ok4 6
<6 7
GetUserDataDTO7 E
>E F
>F G
>G H
GetUserDataI T
(T U
stringU [
email\ a
)a b
{ 	
var   
response   
=   
await    
_bridge  ! (
.  ( )
Ask  ) ,
<  , -
object  - 3
>  3 4
(  4 5
new  5 8
RequestReadUserData  9 L
(  L M
Guid  M Q
.  Q R
NewGuid  R Y
(  Y Z
)  Z [
.  [ \
ToString  \ d
(  d e
)  e f
,  f g
email  h m
)  m n
)  n o
;  o p
if!! 
(!! 
response!! 
is!! #
RespondUserDoesNotExist!! 3
)!!3 4
{"" 
return## 
TypedResults## #
.### $
NotFound##$ ,
(##, -
$str##- B
)##B C
;##C D
}$$ 
RespondUserData%% 
dataResponse%% (
=%%) *
(%%+ ,
RespondUserData%%, ;
)%%; <
response%%= E
;%%E F
return&& 
TypedResults&& 
.&&  
Ok&&  "
(&&" #
new&&# &
GetUserDataDTO&&' 5
(&&5 6
dataResponse&&6 B
.&&B C
Email&&C H
,&&H I
dataResponse&&J V
.&&V W
Name&&W [
,&&[ \
dataResponse&&] i
.&&i j
Surname&&j q
,&&q r
dataResponse&&s 
.	&& �
Reservations
&&� �
)
&&� �
)
&&� �
;
&&� �
}'' 	
[)) 	
HttpPost))	 
()) 
$str)) 
))) 
])) 
public** 
async** 
Task** 
<** 
Results** !
<**! "

BadRequest**" ,
<**, -
string**- 3
>**3 4
,**4 5
Created**6 =
>**= >
>**> ?

CreateUser**@ J
(**J K
[**K L
FromBody**L T
]**T U
CreateUserDTO**V c
createUserRequest**d u
)**u v
{++ 	
var,, 
response,, 
=,, 
await,,  
_bridge,,! (
.,,( )
Ask,,) ,
<,,, -
object,,- 3
>,,3 4
(,,4 5
new,,5 8
RequestCreateUser,,9 J
(,,J K
Guid,,K O
.,,O P
NewGuid,,P W
(,,W X
),,X Y
.,,Y Z
ToString,,Z b
(,,b c
),,c d
,,,d e
createUserRequest,,f w
.,,w x
Email,,x }
,,,} ~
createUserRequest	,, �
.
,,� �
Name
,,� �
,
,,� �
createUserRequest
,,� �
.
,,� �
Surname
,,� �
)
,,� �
)
,,� �
;
,,� �
if-- 
(-- 
response-- 
is-- 
RespondUserExists-- -
)--- .
{.. 
return// 
TypedResults// #
.//# $

BadRequest//$ .
(//. /
$str/// D
)//D E
;//E F
}00 
RespondUserCreated11 
dataResponse11 +
=11, -
(11. /
RespondUserCreated11/ A
)11A B
response11C K
;11K L
return22 
TypedResults22 
.22  
Created22  '
(22' (
dataResponse22( 4
.224 5
	UserEmail225 >
)22> ?
;22? @
}33 	
[55 	
HttpPut55	 
(55 
$str55  
)55  !
]55! "
public66 
async66 
Task66 
<66 
Results66 !
<66! "
NotFound66" *
<66* +
string66+ 1
>661 2
,662 3
Ok664 6
>666 7
>667 8

ChangeUser669 C
(66C D
string66D J
email66K P
,66P Q
[66R S
FromBody66S [
]66[ \
UpdateUserDTO66] j
updateUserRequest66k |
)66| }
{77 	
var88 
response88 
=88 
await88  
_bridge88! (
.88( )
Ask88) ,
<88, -
object88- 3
>883 4
(884 5
new885 8
RequestChangeUser889 J
(88J K
Guid88K O
.88O P
NewGuid88P W
(88W X
)88X Y
.88Y Z
ToString88Z b
(88b c
)88c d
,88d e
email88f k
,88k l
updateUserRequest88m ~
.88~ 
Name	88 �
,
88� �
updateUserRequest
88� �
.
88� �
Surname
88� �
)
88� �
)
88� �
;
88� �
if99 
(99 
response99 
is99 #
RespondUserDoesNotExist99 3
)993 4
{:: 
return;; 
TypedResults;; #
.;;# $
NotFound;;$ ,
(;;, -
$str;;- B
);;B C
;;;C D
}<< 
return== 
TypedResults== 
.==  
Ok==  "
(==" #
)==# $
;==$ %
}>> 	
[@@ 	
HttpGet@@	 
(@@ 
$str@@ 
)@@ 
]@@  
publicAA 
asyncAA 
TaskAA 
<AA 
ResultsAA !
<AA! "
NotFoundAA" *
<AA* +
stringAA+ 1
>AA1 2
,AA2 3
OkAA4 6
<AA6 7
GetEventDataDTOAA7 F
>AAF G
>AAG H
>AAH I
GetEventAAJ R
(AAR S
stringAAS Y
idAAZ \
,AA\ ]
stringAA^ d
currencyAAe m
)AAm n
{BB 	
varCC 
responseCC 
=CC 
awaitCC  
_bridgeCC! (
.CC( )
AskCC) ,
<CC, -
objectCC- 3
>CC3 4
(CC4 5
newCC5 8 
RequestReadEventDataCC9 M
(CCM N
GuidCCN R
.CCR S
NewGuidCCS Z
(CCZ [
)CC[ \
.CC\ ]
ToStringCC] e
(CCe f
)CCf g
,CCg h
idCCi k
,CCk l
currencyCCm u
)CCu v
)CCv w
;CCw x
ifDD 
(DD 
responseDD 
isDD $
RespondEventDoesNotExistDD 4
)DD4 5
{EE 
returnFF 
TypedResultsFF #
.FF# $
NotFoundFF$ ,
(FF, -
$strFF- B
)FFB C
;FFC D
}GG 
RespondEventDataHH 
dataResponseHH )
=HH* +
(HH, -
RespondEventDataHH- =
)HH= >
responseHH> F
;HHF G
varII 
	seatsDataII 
=II 
dataResponseII (
.II( )
SeatsII) .
.II. /
SelectII/ 5
(II5 6
seatII6 :
=>II; =
newII> A
GetEventSeatDTOIIB Q
(IIQ R
seatIIR V
.IIV W
IdIIW Y
,IIY Z
seatII[ _
.II_ `
PriceII` e
)IIe f
)IIf g
.IIg h
ToListIIh n
(IIn o
)IIo p
;IIp q
returnJJ 
TypedResultsJJ 
.JJ  
OkJJ  "
(JJ" #
newJJ# &
GetEventDataDTOJJ' 6
(JJ6 7
dataResponseJJ7 C
.JJC D
IdJJD F
,JJF G
dataResponseJJH T
.JJT U
NameJJU Y
,JJY Z
dataResponseJJ[ g
.JJg h
DurationJJh p
,JJp q
dataResponseJJr ~
.JJ~ 
Location	JJ �
,
JJ� �
dataResponse
JJ� �
.
JJ� �
Date
JJ� �
,
JJ� �
dataResponse
JJ� �
.
JJ� �
Status
JJ� �
,
JJ� �
dataResponse
JJ� �
.
JJ� �
SeatsAmount
JJ� �
,
JJ� �
dataResponse
JJ� �
.
JJ� �"
AvailableSeatsAmount
JJ� �
,
JJ� �
	seatsData
JJ� �
,
JJ� �
dataResponse
JJ� �
.
JJ� �
CheapestPrice
JJ� �
)
JJ� �
)
JJ� �
;
JJ� �
}KK 	
[MM 	
HttpPostMM	 
(MM 
$strMM 
)MM 
]MM 
publicNN 
asyncNN 
TaskNN 
<NN 
CreatedNN !
>NN! "
CreateEventNN# .
(NN. /
[NN/ 0
FromBodyNN0 8
]NN8 9
CreateEventDTONN: H
createEventRequestNNI [
)NN[ \
{OO 	
ListPP 
<PP 
CreateSeatDataPP 
>PP  
seatsPP! &
=PP' (
createEventRequestPP) ;
.PP; <
SeatsPP< A
.PPA B
SelectPPB H
(PPH I
seatPPI M
=>PPN P
newPPQ T
CreateSeatDataPPU c
(PPc d
seatPPd h
.PPh i
PricePPi n
)PPn o
)PPo p
.PPp q
ToListPPq w
(PPw x
)PPx y
;PPy z
RespondEventCreatedQQ 
responseQQ  (
=QQ) *
awaitQQ+ 0
_bridgeQQ1 8
.QQ8 9
AskQQ9 <
<QQ< =
RespondEventCreatedQQ= P
>QQP Q
(QQQ R
newQQR U
RequestCreateEventQQV h
(QQh i
GuidQQi m
.QQm n
NewGuidQQn u
(QQu v
)QQv w
.QQw x
ToString	QQx �
(
QQ� �
)
QQ� �
,
QQ� � 
createEventRequest
QQ� �
.
QQ� �
Name
QQ� �
,
QQ� � 
createEventRequest
QQ� �
.
QQ� �
Duration
QQ� �
,
QQ� � 
createEventRequest
QQ� �
.
QQ� �
Location
QQ� �
,
QQ� � 
createEventRequest
QQ� �
.
QQ� �
Date
QQ� �
,
QQ� �
seats
QQ� �
)
QQ� �
)
QQ� �
;
QQ� �
returnSS 
TypedResultsSS 
.SS  
CreatedSS  '
(SS' (
responseSS( 0
.SS0 1
EventIdSS1 8
)SS8 9
;SS9 :
}TT 	
[VV 	

HttpDeleteVV	 
(VV 
$strVV !
)VV! "
]VV" #
publicWW 
asyncWW 
TaskWW 
<WW 
ResultsWW !
<WW! "
NotFoundWW" *
<WW* +
stringWW+ 1
>WW1 2
,WW2 3
	NoContentWW4 =
>WW= >
>WW> ?
CancelEventWW@ K
(WWK L
stringWWL R
idWWS U
)WWU V
{XX 	
varYY 
responseYY 
=YY 
awaitYY  
_bridgeYY! (
.YY( )
AskYY) ,
<YY, -
objectYY- 3
>YY3 4
(YY4 5
newYY5 8
RequestCancelEventYY9 K
(YYK L
GuidYYL P
.YYP Q
NewGuidYYQ X
(YYX Y
)YYY Z
.YYZ [
ToStringYY[ c
(YYc d
)YYd e
,YYe f
idYYg i
)YYi j
)YYj k
;YYk l
ifZZ 
(ZZ 
responseZZ 
isZZ $
RespondEventDoesNotExistZZ 4
)ZZ4 5
{[[ 
return\\ 
TypedResults\\ #
.\\# $
NotFound\\$ ,
(\\, -
$str\\- C
)\\C D
;\\D E
}]] 
return^^ 
TypedResults^^ 
.^^  
	NoContent^^  )
(^^) *
)^^* +
;^^+ ,
}__ 	
[aa 	
HttpPutaa	 
(aa 
$straa 
)aa 
]aa  
publicbb 
asyncbb 
Taskbb 
<bb 
Resultsbb !
<bb! "
NotFoundbb" *
<bb* +
stringbb+ 1
>bb1 2
,bb2 3
Okbb4 6
>bb6 7
>bb7 8
ChangeEventbb9 D
(bbD E
stringbbE K
idbbL N
,bbN O
[bbP Q
FromBodybbQ Y
]bbY Z
UpdateEventDTObb[ i
updateEventRequestbbj |
)bb| }
{cc 	
vardd 
responsedd 
=dd 
awaitdd  
_bridgedd! (
.dd( )
Askdd) ,
<dd, -
objectdd- 3
>dd3 4
(dd4 5
newdd5 8
RequestChangeEventdd9 K
(ddK L
GuidddL P
.ddP Q
NewGuidddQ X
(ddX Y
)ddY Z
.ddZ [
ToStringdd[ c
(ddc d
)ddd e
,dde f
idddg i
,ddi j
updateEventRequestddk }
.dd} ~
Name	dd~ �
,
dd� � 
updateEventRequest
dd� �
.
dd� �
Duration
dd� �
,
dd� � 
updateEventRequest
dd� �
.
dd� �
Location
dd� �
,
dd� � 
updateEventRequest
dd� �
.
dd� �
Date
dd� �
)
dd� �
)
dd� �
;
dd� �
ifee 
(ee 
responseee 
isee $
RespondEventDoesNotExistee 4
)ee4 5
{ff 
returngg 
TypedResultsgg #
.gg# $
NotFoundgg$ ,
(gg, -
$strgg- C
)ggC D
;ggD E
}hh 
returnii 
TypedResultsii 
.ii  
Okii  "
(ii" #
)ii# $
;ii$ %
}jj 	
[ll 	
HttpGetll	 
(ll 
$strll 
)ll 
]ll 
publicmm 
asyncmm 
Taskmm 
<mm 
Okmm 
<mm 
GetEventsDataDTOmm -
>mm- .
>mm. /
	GetEventsmm0 9
(mm9 :
stringmm: @
?mm@ A
namemmB F
)mmF G
{nn 	
RespondEventsDataoo 
responseoo &
=oo' (
awaitoo) .
_bridgeoo/ 6
.oo6 7
Askoo7 :
<oo: ;
RespondEventsDataoo; L
>ooL M
(ooM N
newooN Q
RequestReadEventsooR c
(ooc d
Guidood h
.ooh i
NewGuidooi p
(oop q
)ooq r
.oor s
ToStringoos {
(oo{ |
)oo| }
,oo} ~
name	oo �
)
oo� �
)
oo� �
;
oo� �
Listpp 
<pp 
GetEventsDataDTOpp !
.pp! "
EventDTOpp" *
>pp* +
eventspp, 2
=pp3 4
responsepp5 =
.pp= >
Eventspp> D
.ppD E
SelectppE K
(ppK L
xppL M
=>ppN P
newppQ T
GetEventsDataDTOppU e
.ppe f
EventDTOppf n
(ppn o
xppo p
.ppp q
Idppq s
,pps t
xppu v
.ppv w
Nameppw {
)pp{ |
)pp| }
.pp} ~
ToList	pp~ �
(
pp� �
)
pp� �
;
pp� �
returnqq 
TypedResultsqq 
.qq  
Okqq  "
(qq" #
newqq# &
GetEventsDataDTOqq' 7
(qq7 8
eventsqq8 >
)qq> ?
)qq? @
;qq@ A
}rr 	
[tt 	
HttpPosttt	 
(tt 
$strtt 3
)tt3 4
]tt4 5
publicuu 
asyncuu 
Taskuu 
<uu 
Resultsuu !
<uu! "
NotFounduu" *
<uu* +
stringuu+ 1
>uu1 2
,uu2 3

BadRequestuu4 >
<uu> ?
stringuu? E
>uuE F
,uuF G
CreateduuH O
>uuO P
>uuP Q
ReserveSeatuuR ]
(uu] ^
[uu^ _
FromBodyuu_ g
]uug h 
CreateReservationDTOuui }%
createReservationRequest	uu~ �
,
uu� �
string
uu� �
eventId
uu� �
,
uu� �
string
uu� �
seatId
uu� �
)
uu� �
{vv 	
varww 
responseww 
=ww 
awaitww  
_bridgeww! (
.ww( )
Askww) ,
<ww, -
objectww- 3
>ww3 4
(ww4 5
newww5 8
RequestReserveSeatww9 K
(wwK L
GuidwwL P
.wwP Q
NewGuidwwQ X
(wwX Y
)wwY Z
.wwZ [
ToStringww[ c
(wwc d
)wwd e
,wwe f
eventIdwwg n
,wwn o
seatIdwwp v
,wwv w%
createReservationRequest	wwx �
.
ww� �
Email
ww� �
)
ww� �
)
ww� �
;
ww� �
ifxx 
(xx 
responsexx 
isxx $
RespondEventDoesNotExistxx 4
)xx4 5
{yy 
returnzz 
TypedResultszz #
.zz# $
NotFoundzz$ ,
(zz, -
$strzz- C
)zzC D
;zzD E
}{{ 
if|| 
(|| 
response|| 
is|| #
RespondSeatDoesNotExist|| 3
)||3 4
{}} 
return~~ 
TypedResults~~ #
.~~# $
NotFound~~$ ,
(~~, -
$str~~- B
)~~B C
;~~C D
} 
if
�� 
(
�� 
response
�� 
is
�� %
RespondUserDoesNotExist
�� 3
)
��3 4
{
�� 
return
�� 
TypedResults
�� #
.
��# $
NotFound
��$ ,
(
��, -
$str
��- B
)
��B C
;
��C D
}
�� 
if
�� 
(
�� 
response
�� 
is
�� $
ReservationDeclination
�� 2
)
��2 3
{
�� 
return
�� 
TypedResults
�� #
.
��# $

BadRequest
��$ .
(
��. /
$str
��/ I
)
��I J
;
��J K
}
�� '
RespondReservationCreated
�� %(
reservationCreatedResponse
��& @
=
��A B
(
��C D'
RespondReservationCreated
��D ]
)
��] ^
response
��^ f
;
��f g
return
�� 
TypedResults
�� 
.
��  
Created
��  '
(
��' ((
reservationCreatedResponse
��( B
.
��B C
ReservationId
��C P
)
��P Q
;
��Q R
}
�� 	
[
�� 	

HttpDelete
��	 
(
�� 
$str
�� '
)
��' (
]
��( )
public
�� 
async
�� 
Task
�� 
<
�� 
Results
�� !
<
��! "
NotFound
��" *
<
��* +
string
��+ 1
>
��1 2
,
��2 3
	NoContent
��4 =
>
��= >
>
��> ?
CancelReservation
��@ Q
(
��Q R
string
��R X
id
��Y [
)
��[ \
{
�� 	
var
�� 
response
�� 
=
�� 
await
��  
_bridge
��! (
.
��( )
Ask
��) ,
<
��, -
object
��- 3
>
��3 4
(
��4 5
new
��5 8&
RequestCancelReservation
��9 Q
(
��Q R
Guid
��R V
.
��V W
NewGuid
��W ^
(
��^ _
)
��_ `
.
��` a
ToString
��a i
(
��i j
)
��j k
,
��k l
id
��m o
)
��o p
)
��p q
;
��q r
if
�� 
(
�� 
response
�� 
is
�� ,
RespondReservationDoesNotExist
�� :
)
��: ;
{
�� 
return
�� 
TypedResults
�� #
.
��# $
NotFound
��$ ,
(
��, -
$str
��- I
)
��I J
;
��J K
}
�� 
return
�� 
TypedResults
�� 
.
��  
	NoContent
��  )
(
��) *
)
��* +
;
��+ ,
}
�� 	
[
�� 	
HttpGet
��	 
(
�� 
$str
�� $
)
��$ %
]
��% &
public
�� 
async
�� 
Task
�� 
<
�� 
Results
�� !
<
��! "
NotFound
��" *
<
��* +
string
��+ 1
>
��1 2
,
��2 3
Ok
��4 6
<
��6 7#
GetReservationDataDTO
��7 L
>
��L M
>
��M N
>
��N O
GetReservation
��P ^
(
��^ _
string
��_ e
id
��f h
)
��h i
{
�� 	
var
�� 
response
�� 
=
�� 
await
��  
_bridge
��! (
.
��( )
Ask
��) ,
<
��, -
object
��- 3
>
��3 4
(
��4 5
new
��5 8(
RequestReadReservationData
��9 S
(
��S T
Guid
��T X
.
��X Y
NewGuid
��Y `
(
��` a
)
��a b
.
��b c
ToString
��c k
(
��k l
)
��l m
,
��m n
id
��o q
)
��q r
)
��r s
;
��s t
if
�� 
(
�� 
response
�� 
is
�� ,
RespondReservationDoesNotExist
�� :
)
��: ;
{
�� 
return
�� 
TypedResults
�� #
.
��# $
NotFound
��$ ,
(
��, -
$str
��- I
)
��I J
;
��J K
}
�� $
RespondReservationData
�� "
dataResponse
��# /
=
��0 1
(
��2 3$
RespondReservationData
��3 I
)
��I J
response
��J R
;
��R S
return
�� 
TypedResults
�� 
.
��  
Ok
��  "
(
��" #
new
��# &#
GetReservationDataDTO
��' <
(
��< =
dataResponse
��= I
.
��I J
ReservationId
��J W
,
��W X
dataResponse
��Y e
.
��e f
Status
��f l
,
��l m
dataResponse
��n z
.
��z {
EventId��{ �
,��� �
dataResponse��� �
.��� �
SeatId��� �
)��� �
)��� �
;��� �
}
�� 	
}
�� 
}�� �
_C:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Connectors\IActorBridge.cs
	namespace 	

AkkaTicket
 
. 

Connectors 
{ 
public 

	interface 
IActorBridge !
{ 
void 
Tell 
( 
object 
message  
)  !
;! "
Task 
< 
T 
> 
Ask 
< 
T 
> 
( 
object 
message %
)% &
;& '
} 
} �+
ZC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Actors\UserManager.cs
	namespace		 	

AkkaTicket		
 
.		 
Actors		 
{

 
public 

class 
UserManager 
: 
UntypedActor +
{ 
private 
	IActorRef 
_shardRegion &
;& '
public 
UserManager 
( 
	IActorRef $
shardRegion% 0
)0 1
{ 	
_shardRegion 
= 
shardRegion &
;& '
} 	
	protected 
ILoggingAdapter !
Log" %
{& '
get( +
;+ ,
}- .
=/ 0
Context1 8
.8 9
	GetLogger9 B
(B C
)C D
;D E
	protected 
override 
void 
PreStart  (
(( )
)) *
{+ ,
Log 
. 
Info 
( 
$" 
$str *
"* +
)+ ,
;, -
} 	
	protected 
override 
void 
PostStop  (
(( )
)) *
=>+ -
Log. 1
.1 2
Info2 6
(6 7
$"7 9
$str9 L
"L M
)M N
;N O
	protected 
override 
async  
void! %
	OnReceive& /
(/ 0
object0 6
message7 >
)> ?
{ 	
switch 
( 
message 
) 
{ 
case 
RequestCreateUser &
createUserMsg' 4
:4 5
Log 
. 
Info 
( 
$" 
$str 7
{7 8
createUserMsg8 E
.E F
EmailF K
}K L
"L M
)M N
;N O
_shardRegion  
.  !
Tell! %
(% &
new& )
ShardRegion* 5
.5 6
StartEntity6 A
(A B
createUserMsgB O
.O P
EmailP U
)U V
)V W
;W X
var 
sender 
=  
Sender! '
;' (
var   
initializeSuccess   )
=  * +
await  , 1
_shardRegion  2 >
.  > ?
Ask  ? B
<  B C
bool  C G
>  G H
(  H I
new  I L

Initialize  M W
(  W X
createUserMsg  X e
.  e f
Email  f k
,  k l
createUserMsg  m z
.  z {
Name  { 
,	   �
createUserMsg
  � �
.
  � �
Surname
  � �
)
  � �
)
  � �
;
  � �
if!! 
(!! 
!!! 
initializeSuccess!! *
)!!* +
{"" 
Log## 
.## 
Warning## #
(### $
$"##$ &
$str##& 5
{##5 6
createUserMsg##6 C
.##C D
Email##D I
}##I J
$str##J `
"##` a
)##a b
;##b c
sender$$ 
.$$ 
Tell$$ #
($$# $
new$$$ '
RespondUserExists$$( 9
($$9 :
createUserMsg$$: G
.$$G H
	RequestId$$H Q
)$$Q R
)$$R S
;$$S T
break%% 
;%% 
}&& 
sender'' 
.'' 
Tell'' 
(''  
new''  #
RespondUserCreated''$ 6
(''6 7
createUserMsg''7 D
.''D E
	RequestId''E N
,''N O
createUserMsg''P ]
.''] ^
Email''^ c
)''c d
)''d e
;''e f
break(( 
;(( 
case)) 
RequestReadUserData)) (
readUserDataMsg))) 8
:))8 9
_shardRegion**  
.**  !
Forward**! (
(**( )
readUserDataMsg**) 8
)**8 9
;**9 :
break++ 
;++ 
case,, 
RequestChangeUser,, & 
requestChangeUserMsg,,' ;
:,,; <
_shardRegion--  
.--  !
Forward--! (
(--( ) 
requestChangeUserMsg--) =
)--= >
;--> ?
break.. 
;.. 
case// 
ReservationCreated// '!
reservationCreatedMsg//( =
://= >
_shardRegion00  
.00  !
Forward00! (
(00( )!
reservationCreatedMsg00) >
)00> ?
;00? @
break11 
;11 
case22 
ReadUserData22 !
readUserDataMsg22" 1
:221 2
_shardRegion33  
.33  !
Forward33! (
(33( )
readUserDataMsg33) 8
)338 9
;339 :
break44 
;44 
}55 
}66 	
public88 
static88 
Props88 
Props88 !
(88! "
	IActorRef88" +
shardRegion88, 7
)887 8
=>889 ;
Akka88< @
.88@ A
Actor88A F
.88F G
Props88G L
.88L M
Create88M S
<88S T
UserManager88T _
>88_ `
(88` a
(88a b
)88b c
=>88d f
new88g j
UserManager88k v
(88v w
shardRegion	88w �
)
88� �
)
88� �
;
88� �
}99 
}:: �|
SC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Actors\User.cs
	namespace		 	

AkkaTicket		
 
.		 
Actors		 
{

 
public 

class 
InitialUserInfo  
{ 
public 
string 
Email 
; 
public 
string 
Name 
; 
public 
string 
Surname 
; 
public 
InitialUserInfo 
( 
string %
email& +
,+ ,
string- 3
name4 8
,8 9
string: @
surnameA H
)H I
{ 	
Email 
= 
email 
; 
Name 
= 
name 
; 
Surname 
= 
surname 
; 
} 	
} 
public 

class 
UserInfoUpdate 
{ 
public 
UserInfoUpdate 
( 
string $
name% )
,) *
string+ 1
surname2 9
)9 :
{ 	
Name 
= 
name 
; 
Surname 
= 
surname 
; 
} 	
public 
string 
Name 
; 
public 
string 
Surname 
; 
}   
public!! 

class!! 
	UserState!! 
{"" 
public## 
readonly## 
string## 
Email## $
;##$ %
public$$ 
readonly$$ 
string$$ 
Name$$ #
;$$# $
public%% 
readonly%% 
string%% 
Surname%% &
;%%& '
public&& 
	UserState&& 
(&& 
string&& 
email&&  %
,&&% &
string&&' -
name&&. 2
,&&2 3
string&&4 :
surname&&; B
)&&B C
{'' 	
Email(( 
=(( 
email(( 
;(( 
Name)) 
=)) 
name)) 
;)) 
Surname** 
=** 
surname** 
;** 
}++ 	
public-- 
	UserState-- 
Updated--  
(--  !
UserInfoUpdate--! /
evt--0 3
)--3 4
{.. 	
return// 
new// 
	UserState//  
(//  !
Email//! &
,//& '
evt//( +
.//+ ,
Name//, 0
,//0 1
evt//2 5
.//5 6
Surname//6 =
)//= >
;//> ?
}00 	
public11 
	UserState11 
Updated11  
(11  !
InitialUserInfo11! 0
evt111 4
)114 5
{22 	
return33 
new33 
	UserState33  
(33  !
evt33! $
.33$ %
Email33% *
,33* +
evt33, /
.33/ 0
Name330 4
,334 5
evt336 9
.339 :
Surname33: A
)33A B
;33B C
}44 	
}55 
public66 

class66 
User66 
:66 "
UntypedPersistentActor66 .
{77 
private88 
	UserState88 
_state88  
;88  !
private99 
void99 
UpdateState99  
(99  !
UserInfoUpdate99! /
evt990 3
)993 4
{:: 	
_state;; 
=;; 
_state;; 
.;; 
Updated;; #
(;;# $
evt;;$ '
);;' (
;;;( )
}<< 	
private== 
void== 
UpdateState==  
(==  !
InitialUserInfo==! 0
evt==1 4
)==4 5
{>> 	
_state?? 
=?? 
_state?? 
.?? 
Updated?? #
(??# $
evt??$ '
)??' (
;??( )
}@@ 	
privateAA 

DictionaryAA 
<AA 
stringAA !
,AA! "
	IActorRefAA# ,
>AA, -*
reservationIdToRservationActorAA. L
=AAM N
newAAO R
(AAR S
)AAS T
;AAT U
privateBB 
boolBB 
IsInitializedBB "
=BB# $
falseBB% *
;BB* +
publicDD 
UserDD 
(DD 
stringDD 
emailDD  
)DD  !
{EE 	
PersistenceIdFF 
=FF 
$"FF 
$strFF #
{FF# $
emailFF$ )
}FF) *
"FF* +
;FF+ ,
_stateGG 
=GG 
newGG 
	UserStateGG "
(GG" #
emailGG# (
,GG( )
$strGG* ,
,GG, -
$strGG. 0
)GG0 1
;GG1 2
}HH 	
	protectedJJ 
ILoggingAdapterJJ !
LogJJ" %
{JJ& '
getJJ( +
;JJ+ ,
}JJ- .
=JJ/ 0
ContextJJ1 8
.JJ8 9
	GetLoggerJJ9 B
(JJB C
)JJC D
;JJD E
	protectedLL 
overrideLL 
voidLL 
PreStartLL  (
(LL( )
)LL) *
{MM 	
LogNN 
.NN 
InfoNN 
(NN 
$"NN 
$strNN "
{NN" #
PersistenceIdNN# 0
}NN0 1
$strNN1 9
"NN9 :
)NN: ;
;NN; <
}OO 	
	protectedQQ 
overrideQQ 
voidQQ 
PostStopQQ  (
(QQ( )
)QQ) *
{RR 	
LogSS 
.SS 
InfoSS 
(SS 
$"SS 
$strSS "
{SS" #
PersistenceIdSS# 0
}SS0 1
$strSS1 9
"SS9 :
)SS: ;
;SS; <
}TT 	
	protectedVV 
overrideVV 
voidVV 
	OnRecoverVV  )
(VV) *
objectVV* 0
messageVV1 8
)VV8 9
{WW 	
switchXX 
(XX 
messageXX 
)XX 
{YY 
caseZZ 
InitialUserInfoZZ $
evtZZ% (
:ZZ( )
IsInitialized[[ !
=[[" #
true[[$ (
;[[( )
UpdateState\\ 
(\\  
evt\\  #
)\\# $
;\\$ %
break]] 
;]] 
case^^ 
UserInfoUpdate^^ #
evt^^$ '
:^^' (
UpdateState__ 
(__  
evt__  #
)__# $
;__$ %
break`` 
;`` 
caseaa 
SnapshotOfferaa "
snapshotaa# +
whenaa, 0
snapshotaa1 9
.aa9 :
Snapshotaa: B
isaaC E
	UserStateaaF O
stateaaP U
:aaU V
_statebb 
=bb 
statebb "
;bb" #
breakcc 
;cc 
}dd 
}ee 	
	protectedgg 
overridegg 
voidgg 
	OnCommandgg  )
(gg) *
objectgg* 0
messagegg1 8
)gg8 9
{hh 	
switchii 
(ii 
messageii 
)ii 
{jj 
casekk 

Initializekk 
initializeMsgkk  -
:kk- .
ifll 
(ll 
IsInitializedll %
)ll% &
{mm 
Sendernn 
.nn 
Tellnn #
(nn# $
falsenn$ )
)nn) *
;nn* +
breakoo 
;oo 
}pp 
Persistqq 
(qq 
newqq 
InitialUserInfoqq  /
(qq/ 0
initializeMsgqq0 =
.qq= >
EntityIdqq> F
,qqF G
initializeMsgqqH U
.qqU V
NameqqV Z
,qqZ [
initializeMsgqq\ i
.qqi j
Surnameqqj q
)qqq r
,qqr s
UpdateStateqqt 
)	qq �
;
qq� �
IsInitializedrr !
=rr" #
truerr$ (
;rr( )
Senderss 
.ss 
Tellss 
(ss  
truess  $
)ss$ %
;ss% &
breaktt 
;tt 
caseuu 
RequestReadUserDatauu (
readMsguu) 0
whenuu1 5
readMsguu6 =
.uu= >
Emailuu> C
.uuC D
EqualsuuD J
(uuJ K
_stateuuK Q
.uuQ R
EmailuuR W
)uuW X
:uuX Y
ifvv 
(vv 
!vv 
IsInitializedvv &
)vv& '
{ww 
Logxx 
.xx 
Warningxx #
(xx# $
$"xx$ &
$strxx& 5
{xx5 6
readMsgxx6 =
.xx= >
Emailxx> C
}xxC D
$strxxD V
"xxV W
)xxW X
;xxX Y
Senderyy 
.yy 
Tellyy #
(yy# $
newyy$ '#
RespondUserDoesNotExistyy( ?
(yy? @
readMsgyy@ G
.yyG H
	RequestIdyyH Q
)yyQ R
)yyR S
;yyS T
breakzz 
;zz 
}{{ 
Sender|| 
.|| 
Tell|| 
(||  
new||  #
RespondUserData||$ 3
(||3 4
readMsg||4 ;
.||; <
	RequestId||< E
,||E F
_state||G M
.||M N
Email||N S
,||S T
_state||U [
.||[ \
Name||\ `
,||` a
_state||b h
.||h i
Surname||i p
,||p q+
reservationIdToRservationActor	||r �
.
||� �
Keys
||� �
.
||� �
ToList
||� �
(
||� �
)
||� �
)
||� �
)
||� �
;
||� �
break}} 
;}} 
case~~ 
RequestReadUserData~~ (
readMsg~~) 0
:~~0 1
Log 
. 
Warning 
(  
$"  "
$str" D
{D E
readMsgE L
.L M
EmailM R
}R S
$strS s
{s t
_statet z
.z {
Email	{ �
}
� �
"
� �
)
� �
;
� �
break
�� 
;
�� 
case
�� 
RequestChangeUser
�� &"
requestChangeUserMsg
��' ;
when
��< @"
requestChangeUserMsg
��A U
.
��U V
Email
��V [
.
��[ \
Equals
��\ b
(
��b c
_state
��c i
.
��i j
Email
��j o
)
��o p
:
��p q
if
�� 
(
�� 
!
�� 
IsInitialized
�� &
)
��& '
{
�� 
Log
�� 
.
�� 
Warning
�� #
(
��# $
$"
��$ &
$str
��& 5
{
��5 6"
requestChangeUserMsg
��6 J
.
��J K
Email
��K P
}
��P Q
$str
��Q c
"
��c d
)
��d e
;
��e f
Sender
�� 
.
�� 
Tell
�� #
(
��# $
new
��$ '%
RespondUserDoesNotExist
��( ?
(
��? @"
requestChangeUserMsg
��@ T
.
��T U
	RequestId
��U ^
)
��^ _
)
��_ `
;
��` a
break
�� 
;
�� 
}
�� 
Persist
�� 
(
�� 
new
�� 
UserInfoUpdate
��  .
(
��. /"
requestChangeUserMsg
��/ C
.
��C D
Name
��D H
,
��H I"
requestChangeUserMsg
��J ^
.
��^ _
Surname
��_ f
)
��f g
,
��g h
UpdateState
��i t
)
��t u
;
��u v
Sender
�� 
.
�� 
Tell
�� 
(
��  
new
��  #
RespondUserData
��$ 3
(
��3 4"
requestChangeUserMsg
��4 H
.
��H I
	RequestId
��I R
,
��R S
_state
��T Z
.
��Z [
Email
��[ `
,
��` a
_state
��b h
.
��h i
Name
��i m
,
��m n
_state
��o u
.
��u v
Surname
��v }
,
��} ~-
reservationIdToRservationActor�� �
.��� �
Keys��� �
.��� �
ToList��� �
(��� �
)��� �
)��� �
)��� �
;��� �
break
�� 
;
�� 
case
��  
ReservationCreated
�� '#
reservationCreatedMsg
��( =
:
��= >
if
�� 
(
�� 
!
�� 
IsInitialized
�� &
)
��& '
{
�� 
Log
�� 
.
�� 
Warning
�� #
(
��# $
$"
��$ &
$str
��& 5
{
��5 6#
reservationCreatedMsg
��6 K
.
��K L
Email
��L Q
}
��Q R
$str
��R d
"
��d e
)
��e f
;
��f g
Sender
�� 
.
�� 
Tell
�� #
(
��# $
new
��$ '%
RespondUserDoesNotExist
��( ?
(
��? @#
reservationCreatedMsg
��@ U
.
��U V
	RequestId
��V _
)
��_ `
)
��` a
;
��a b
break
�� 
;
�� 
}
�� ,
reservationIdToRservationActor
�� 2
.
��2 3
Add
��3 6
(
��6 7#
reservationCreatedMsg
��7 L
.
��L M
ReservationId
��M Z
,
��Z [
Sender
��\ b
)
��b c
;
��c d
break
�� 
;
�� 
case
�� 
ReadUserData
�� !
readMsg
��" )
when
��* .
readMsg
��/ 6
.
��6 7
Email
��7 <
.
��< =
Equals
��= C
(
��C D
_state
��D J
.
��J K
Email
��K P
)
��P Q
:
��Q R
if
�� 
(
�� 
!
�� 
IsInitialized
�� &
)
��& '
{
�� 
Log
�� 
.
�� 
Warning
�� #
(
��# $
$"
��$ &
$str
��& 5
{
��5 6
readMsg
��6 =
.
��= >
Email
��> C
}
��C D
$str
��D V
"
��V W
)
��W X
;
��X Y
Sender
�� 
.
�� 
Tell
�� #
(
��# $
new
��$ '%
RespondUserDoesNotExist
��( ?
(
��? @
readMsg
��@ G
.
��G H
	RequestId
��H Q
)
��Q R
)
��R S
;
��S T
break
�� 
;
�� 
}
�� 
Sender
�� 
.
�� 
Tell
�� 
(
��  
new
��  #
UserData
��$ ,
(
��, -
readMsg
��- 4
.
��4 5
	RequestId
��5 >
,
��> ?
_state
��@ F
.
��F G
Email
��G L
)
��L M
)
��M N
;
��N O
break
�� 
;
�� 
case
�� 
$str
�� 
:
�� 
SaveSnapshot
��  
(
��  !
_state
��! '
)
��' (
;
��( )
break
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
override
�� 
string
�� 
PersistenceId
�� ,
{
��- .
get
��/ 2
;
��2 3
}
��4 5
public
�� 
static
�� 
Props
�� 
Props
�� !
(
��! "
string
��" (
email
��) .
)
��. /
=>
��0 2
Akka
��3 7
.
��7 8
Actor
��8 =
.
��= >
Props
��> C
.
��C D
Create
��D J
(
��J K
(
��K L
)
��L M
=>
��N P
new
��Q T
User
��U Y
(
��Y Z
email
��Z _
)
��_ `
)
��` a
;
��a b
}
�� 
}�� �-
bC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Actors\TicketingSupervisor.cs
	namespace 	

AkkaTicket
 
. 
Actors 
{ 
public		 

class		 
TicketingSupervisor		 $
:		% &
UntypedActor		' 3
{

 
public 
ILoggingAdapter 
Log "
{# $
get% (
;( )
}* +
=, -
Context. 5
.5 6
	GetLogger6 ?
(? @
)@ A
;A B
	IActorRef 
userManagerActor "
;" #
	IActorRef 
bookingManagerActor %
=& '
Context( /
./ 0
ActorOf0 7
(7 8
BookingManager8 F
.F G
PropsG L
(L M
)M N
,N O
$strP `
)` a
;a b
public 
TicketingSupervisor "
(" #
	IActorRef# ,
shardRegion- 8
)8 9
{ 	
userManagerActor 
= 
Context &
.& '
ActorOf' .
(. /
UserManager/ :
.: ;
Props; @
(@ A
shardRegionA L
)L M
,M N
$strO \
)\ ]
;] ^
} 	
	protected 
override 
void 
PreStart  (
(( )
)) *
=>+ -
Log. 1
.1 2
Info2 6
(6 7
$str7 V
)V W
;W X
	protected 
override 
void 
PostStop  (
(( )
)) *
=>+ -
Log. 1
.1 2
Info2 6
(6 7
$str7 V
)V W
;W X
	protected 
override 
void 
	OnReceive  )
() *
object* 0
message1 8
)8 9
{ 	
switch 
( 
message 
) 
{ 
case 
RequestCreateUser & 
requestCreateUserMsg' ;
:; <
userManagerActor $
.$ %
Forward% ,
(, - 
requestCreateUserMsg- A
)A B
;B C
break 
; 
case 
RequestReadUserData (
readUserDataMsg) 8
:8 9
userManagerActor $
.$ %
Forward% ,
(, -
readUserDataMsg- <
)< =
;= >
break 
; 
case 
RequestChangeUser & 
requestChangeUserMsg' ;
:; <
userManagerActor $
.$ %
Forward% ,
(, - 
requestChangeUserMsg- A
)A B
;B C
break   
;   
case!! 
RequestCreateEvent!! '!
requestCreateEventMsg!!( =
:!!= >
bookingManagerActor"" '
.""' (
Forward""( /
(""/ 0!
requestCreateEventMsg""0 E
)""E F
;""F G
break## 
;## 
case$$ 
RequestReadEvents$$ & 
requestReadEventsMsg$$' ;
:$$; <
bookingManagerActor%% '
.%%' (
Forward%%( /
(%%/ 0 
requestReadEventsMsg%%0 D
)%%D E
;%%E F
break&& 
;&& 
case''  
RequestReadEventData'' )
readEventDataMsg''* :
:'': ;
bookingManagerActor(( '
.((' (
Forward((( /
(((/ 0
readEventDataMsg((0 @
)((@ A
;((A B
break)) 
;)) 
case** 
RequestChangeEvent** '!
requestChangeEventMsg**( =
:**= >
bookingManagerActor++ '
.++' (
Forward++( /
(++/ 0!
requestChangeEventMsg++0 E
)++E F
;++F G
break,, 
;,, 
case-- 
RequestCancelEvent-- '!
requestCancelEventMsg--( =
:--= >
bookingManagerActor.. '
...' (
Forward..( /
(../ 0!
requestCancelEventMsg..0 E
)..E F
;..F G
break// 
;// 
case00 
RequestReserveSeat00 '
reserveSeatMsg00( 6
:006 7
bookingManagerActor11 '
.11' (
Forward11( /
(11/ 0
reserveSeatMsg110 >
)11> ?
;11? @
break22 
;22 
case33 &
RequestReadReservationData33 /"
readReservationDataMsg330 F
:33F G
bookingManagerActor44 '
.44' (
Forward44( /
(44/ 0"
readReservationDataMsg440 F
)44F G
;44G H
break55 
;55 
case66 $
RequestCancelReservation66 - 
cancelReservationMsg66. B
:66B C
bookingManagerActor77 '
.77' (
Forward77( /
(77/ 0 
cancelReservationMsg770 D
)77D E
;77E F
break88 
;88 
}99 
}:: 	
public;; 
static;; 
Props;; 
Props;; !
(;;! "
	IActorRef;;" +
shardRegion;;, 7
);;7 8
=>;;9 ;
Akka;;< @
.;;@ A
Actor;;A F
.;;F G
Props;;G L
.;;L M
Create;;M S
<;;S T
TicketingSupervisor;;T g
>;;g h
(;;h i
(;;i j
);;j k
=>;;l n
new;;o r 
TicketingSupervisor	;;s �
(
;;� �
shardRegion
;;� �
)
;;� �
)
;;� �
;
;;� �
}<< 
}== �T
ZC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Actors\Reservation.cs
	namespace 	

AkkaTicket
 
. 
Actors 
{ 
public 

static 
class 
ReservationStates )
{ 
public 
static 
readonly 
string %
CREATED& -
=. /
$str0 9
;9 :
public 
static 
readonly 
string %
DECLINED& .
=/ 0
$str1 ;
;; <
public 
static 
readonly 
string %
ACTIVE& ,
=- .
$str/ 7
;7 8
public 
static 
readonly 
string %
CANCELED& .
=/ 0
$str1 ;
;; <
} 
public 

class 
Reservation 
: 
UntypedActor +
{ 
private 
string 
Id 
{ 
get 
;  
set! $
;$ %
}& '
private 
string 
Status 
{ 
get  #
;# $
set% (
;( )
}* +
private 
string 
EventId 
{  
get! $
;$ %
set& )
;) *
}+ ,
private 
string 
? 
SeatId 
{  
get! $
;$ %
set& )
;) *
}+ ,
private 
string 
? 
	UserEmail !
{" #
get$ '
;' (
set) ,
;, -
}. /
private 
	IActorRef 
Event 
{  !
get" %
;% &
set' *
;* +
}, -
private 
ActorSelection 
UserManager *
{+ ,
get- 0
;0 1
}2 3
public 
Reservation 
( 
string !
id" $
,$ %
string& ,
eventId- 4
,4 5
	IActorRef6 ?
eventRef@ H
)H I
{ 	
Id 
= 
id 
; 
EventId   
=   
eventId   
;   
Status!! 
=!! 
ReservationStates!! &
.!!& '
CREATED!!' .
;!!. /
Event"" 
="" 
eventRef"" 
;"" 
UserManager## 
=## 
Context## !
.##! "
ActorSelection##" 0
(##0 1
$str##1 D
)##D E
;##E F
}$$ 	
	protected%% 
ILoggingAdapter%% !
Log%%" %
{%%& '
get%%( +
;%%+ ,
}%%- .
=%%/ 0
Context%%1 8
.%%8 9
	GetLogger%%9 B
(%%B C
)%%C D
;%%D E
	protected&& 
override&& 
void&& 
PreStart&&  (
(&&( )
)&&) *
{'' 	
Log(( 
.(( 
Info(( 
((( 
$"(( 
$str(( )
{(() *
Id((* ,
}((, -
$str((- 5
"((5 6
)((6 7
;((7 8
})) 	
	protected++ 
override++ 
void++ 
PostStop++  (
(++( )
)++) *
{,, 	
Log-- 
.-- 
Info-- 
(-- 
$"-- 
$str-- )
{--) *
Id--* ,
}--, -
$str--- 5
"--5 6
)--6 7
;--7 8
}.. 	
	protected// 
override// 
async//  
void//! %
	OnReceive//& /
(/// 0
object//0 6
message//7 >
)//> ?
{00 	
switch11 
(11 
message11 
)11 
{22 
case33 
RequestReserveSeat33 '
reserveSeatMsg33( 6
:336 7
if44 
(44 
Status44 
.44 
Equals44 %
(44% &
ReservationStates44& 7
.447 8
CREATED448 ?
)44? @
)44@ A
{55 
var66 
senderActor66 '
=66( )
Sender66* 0
;660 1
var77 
reservationActor77 ,
=77- .
Self77/ 3
;773 4
var88 
userResponse88 (
=88) *
await88+ 0
UserManager881 <
.88< =
Ask88= @
<88@ A
object88A G
>88G H
(88H I
new88I L
ReadUserData88M Y
(88Y Z
reserveSeatMsg88Z h
.88h i
	RequestId88i r
,88r s
reserveSeatMsg	88t �
.
88� �
	UserEmail
88� �
)
88� �
)
88� �
;
88� �
if:: 
(:: 
userResponse:: (
is::) +#
RespondUserDoesNotExist::, C
)::C D
{;; 
Status<< "
=<<# $
ReservationStates<<% 6
.<<6 7
DECLINED<<7 ?
;<<? @
senderActor== '
.==' (
Tell==( ,
(==, -
userResponse==- 9
)==9 :
;==: ;
break>> !
;>>! "
}?? 
varAA 
responseAA $
=AA% &
awaitAA' ,
EventAA- 2
.AA2 3
AskAA3 6
<AA6 7
objectAA7 =
>AA= >
(AA> ?
newAA? B
ReservationRequestAAC U
(AAU V
reserveSeatMsgAAV d
.AAd e
	RequestIdAAe n
,AAn o
reserveSeatMsgAAp ~
.AA~ 
SeatId	AA �
,
AA� �
reservationActor
AA� �
)
AA� �
)
AA� �
;
AA� �
ifBB 
(BB 
responseBB $
isBB% '"
ReservationDeclinationBB( >
)BB> ?
{CC 
StatusDD "
=DD# $
ReservationStatesDD% 6
.DD6 7
DECLINEDDD7 ?
;DD? @
senderActorEE '
.EE' (
TellEE( ,
(EE, -
responseEE- 5
)EE5 6
;EE6 7
breakFF !
;FF! "
}GG #
ReservationConfirmationII / 
responseConfirmationII0 D
=IIE F
(IIG H#
ReservationConfirmationIIH _
)II_ `
responseIIa i
;IIi j
StatusJJ 
=JJ  
ReservationStatesJJ! 2
.JJ2 3
ACTIVEJJ3 9
;JJ9 :
SeatIdKK 
=KK   
responseConfirmationKK! 5
.KK5 6
SeatIdKK6 <
;KK< =
	UserEmailLL !
=LL" #
reserveSeatMsgLL$ 2
.LL2 3
	UserEmailLL3 <
;LL< =
senderActorMM #
.MM# $
TellMM$ (
(MM( )
newMM) ,%
RespondReservationCreatedMM- F
(MMF G
reserveSeatMsgMMG U
.MMU V
	RequestIdMMV _
,MM_ `
thisMMa e
.MMe f
IdMMf h
)MMh i
)MMi j
;MMj k
UserManagerNN #
.NN# $
TellNN$ (
(NN( )
newNN) ,
ReservationCreatedNN- ?
(NN? @
reserveSeatMsgNN@ N
.NNN O
	RequestIdNNO X
,NNX Y
thisNNZ ^
.NN^ _
IdNN_ a
,NNa b
thisNNc g
.NNg h
	UserEmailNNh q
)NNq r
)NNr s
;NNs t
breakOO 
;OO 
}PP 
breakQQ 
;QQ 
caseRR &
RequestReadReservationDataRR /"
readReservationDataMsgRR0 F
:RRF G
SenderSS 
.SS 
TellSS 
(SS  
newSS  #"
RespondReservationDataSS$ :
(SS: ;"
readReservationDataMsgSS; Q
.SSQ R
	RequestIdSSR [
,SS[ \
IdSS] _
,SS_ `
StatusSSa g
,SSg h
EventIdSSi p
,SSp q
SeatIdSSr x
!SSx y
)SSy z
)SSz {
;SS{ |
breakTT 
;TT 
caseUU $
RequestCancelReservationUU - 
cancelReservationMsgUU. B
:UUB C
StatusVV 
=VV 
ReservationStatesVV .
.VV. /
CANCELEDVV/ 7
;VV7 8
SenderWW 
.WW 
TellWW 
(WW  
newWW  #'
RespondReservationCancelledWW$ ?
(WW? @ 
cancelReservationMsgWW@ T
.WWT U
	RequestIdWWU ^
,WW^ _
IdWW` b
)WWb c
)WWc d
;WWd e
varXX #
reservationCancelledMsgXX /
=XX0 1
newXX2 5 
ReservationCancelledXX6 J
(XXJ K 
cancelReservationMsgXXK _
.XX_ `
	RequestIdXX` i
,XXi j
IdXXk m
,XXm n
	UserEmailXXo x
!XXx y
)XXy z
;XXz {
EventYY 
.YY 
TellYY 
(YY #
reservationCancelledMsgYY 6
)YY6 7
;YY7 8
breakZZ 
;ZZ 
case[[ 
EventChanged[[ !
eventChangedMsg[[" 1
:[[1 2
Log\\ 
.\\ 
Info\\ 
(\\ 
$"\\ 
$str\\ 5
{\\5 6
Id\\6 8
}\\8 9
$str\\9 x
"\\x y
)\\y z
;\\z {
break^^ 
;^^ 
case__ 
EventCancelled__ #
eventCancelledMsg__$ 5
:__5 6
Status`` 
=`` 
ReservationStates`` .
.``. /
CANCELED``/ 7
;``7 8
Logaa 
.aa 
Infoaa 
(aa 
$"aa 
$straa +
{aa+ ,
Idaa, .
}aa. /
$str	aa/ �
"
aa� �
)
aa� �
;
aa� �
breakcc 
;cc 
}dd 
}ee 	
publicgg 
staticgg 
Propsgg 
Propsgg !
(gg! "
stringgg" (
idgg) +
,gg+ ,
stringgg- 3
eventIdgg4 ;
,gg; <
	IActorRefgg= F
eventRefggG O
)ggO P
=>ggQ S
AkkaggT X
.ggX Y
ActorggY ^
.gg^ _
Propsgg_ d
.ggd e
Creategge k
(ggk l
(ggl m
)ggm n
=>ggo q
newggr u
Reservation	ggv �
(
gg� �
id
gg� �
,
gg� �
eventId
gg� �
,
gg� �
eventRef
gg� �
)
gg� �
)
gg� �
;
gg� �
}hh 
}ii �l
YC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Actors\EventQuery.cs
	namespace 	

AkkaTicket
 
. 
Actors 
{		 
public

 

class

 

EventQuery

 
:

 
UntypedActor

 *
{ 
private 
ICancelable 
queryTimeoutTimer -
;- .
public 

EventQuery 
( 

Dictionary $
<$ %
	IActorRef% .
,. /
string0 6
>6 7
actorToEventId8 F
,F G
stringH N
	requestIdO X
,X Y
	IActorRefZ c
	requesterd m
,m n
TimeSpano w
timeoutx 
,	 �

Parameters
� �
@params
� �
)
� �
{ 	
ActorToEventId 
= 
actorToEventId +
;+ ,
	RequestId 
= 
	requestId !
;! "
	Requester 
= 
	requester !
;! "
Timeout 
= 
timeout 
; 
queryTimeoutTimer 
= 
Context  '
.' (
System( .
.. /
	Scheduler/ 8
.8 9&
ScheduleTellOnceCancelable9 S
(S T
timeoutT [
,[ \
Self] a
,a b
CollectionTimeoutc t
.t u
Instanceu }
,} ~
Self	 �
)
� �
;
� �
Become 
( 
WaitingForReplies $
($ %
new% (

Dictionary) 3
<3 4
string4 :
,: ;
	EventData< E
>E F
(F G
)G H
,H I
newJ M
HashSetN U
<U V
	IActorRefV _
>_ `
(` a
ActorToEventIda o
.o p
Keysp t
)t u
)u v
)v w
;w x
Params 
= 
@params 
; 
} 	
public 

Dictionary 
< 
	IActorRef #
,# $
string% +
>+ ,
ActorToEventId- ;
{< =
get> A
;A B
}C D
public 
string 
	RequestId 
{  !
get" %
;% &
}' (
public 
	IActorRef 
	Requester "
{# $
get% (
;( )
}* +
public 
TimeSpan 
Timeout 
{  !
get" %
;% &
}' (
public 

Parameters 
Params  
{! "
get# &
;& '
}( )
private 
static 
double 1
%ExternalCallSimulationFailProbability C
=D E
$numF J
;J K
	protected   
override   
void   
PreStart    (
(  ( )
)  ) *
{!! 	
foreach"" 
("" 
var"" 
actor"" 
in"" !
ActorToEventId""" 0
.""0 1
Keys""1 5
)""5 6
{## 
Context$$ 
.$$ 
Watch$$ 
($$ 
actor$$ #
)$$# $
;$$$ %
actor%% 
.%% 
Tell%% 
(%% 
new%% 
ReadEventData%% ,
(%%, -
	RequestId%%- 6
)%%6 7
)%%7 8
;%%8 9
}&& 
}'' 	
	protected)) 
override)) 
void)) 
PostStop))  (
())( )
)))) *
{** 	
queryTimeoutTimer++ 
.++ 
Cancel++ $
(++$ %
)++% &
;++& '
},, 	
	protected-- 
ILoggingAdapter-- !
Log--" %
{--& '
get--( +
;--+ ,
}--- .
=--/ 0
Context--1 8
.--8 9
	GetLogger--9 B
(--B C
)--C D
;--D E
public// 
UntypedReceive// 
WaitingForReplies// /
(/// 0

Dictionary//0 :
<//: ;
string//; A
,//A B
	EventData//C L
>//L M
repliesSoFar//N Z
,//Z [
HashSet//\ c
<//c d
	IActorRef//d m
>//m n
stillWaiting//o {
)//{ |
{00 	
return11 
message11 
=>11 
{22 
switch33 
(33 
message33 
)33 
{44 
case55 
	EventData55 "
response55# +
when55, 0
response551 9
.559 :
	RequestId55: C
==55D F
	RequestId55G P
:55P Q
var66 

eventActor66 &
=66' (
Sender66) /
;66/ 0
ReceivedResponse77 (
(77( )

eventActor77) 3
,773 4
response775 =
,77= >
stillWaiting77? K
,77K L
repliesSoFar77M Y
)77Y Z
;77Z [
break88 
;88 
case99 

Terminated99 #
t99$ %
:99% &
ReceivedResponse:: (
(::( )
t::) *
.::* +
ActorRef::+ 3
,::3 4
null::5 9
,::9 :
stillWaiting::; G
,::G H
repliesSoFar::I U
)::U V
;::V W
break;; 
;;; 
case<< 
CollectionTimeout<< *
_<<+ ,
:<<, -
var== 
replies== #
===$ %
new==& )

Dictionary==* 4
<==4 5
string==5 ;
,==; <
	EventData=== F
>==F G
(==G H
repliesSoFar==H T
)==T U
;==U V
List>> 
<>> 
RespondEventsData>> .
.>>. /
	EventData>>/ 8
>>>8 9
events>>: @
=>>A B
replies>>C J
.>>J K
Values>>K Q
.>>Q R
Select>>R X
(>>X Y
x>>Y Z
=>>>[ ]
new>>^ a
RespondEventsData>>b s
.>>s t
	EventData>>t }
(>>} ~
x>>~ 
.	>> �
Id
>>� �
,
>>� �
x
>>� �
.
>>� �
Name
>>� �
)
>>� �
)
>>� �
.
>>� �
ToList
>>� �
(
>>� �
)
>>� �
;
>>� �
Random@@ 
rnd@@ "
=@@# $
new@@% (
Random@@) /
(@@/ 0
)@@0 1
;@@1 2
ifAA 
(AA 
rndAA 
.AA  

NextDoubleAA  *
(AA* +
)AA+ ,
<AA- .1
%ExternalCallSimulationFailProbabilityAA/ T
)AAT U
{BB 
LogCC 
.CC  
InfoCC  $
(CC$ %
$strCC% W
)CCW X
;CCX Y
throwDD !
newDD" %!
NoConnectionExceptionDD& ;
(DD; <
)DD< =
;DD= >
}EE 
	RequesterFF !
.FF! "
TellFF" &
(FF& '
newFF' *
RespondEventsDataFF+ <
(FF< =
	RequestIdFF= F
,FFF G
eventsFFH N
)FFN O
)FFO P
;FFP Q
ContextGG 
.GG  
StopGG  $
(GG$ %
SelfGG% )
)GG) *
;GG* +
breakHH 
;HH 
}II 
}JJ 
;JJ 
}KK 	
publicMM 
voidMM 
ReceivedResponseMM $
(MM$ %
	IActorRefMM% .

eventActorMM/ 9
,MM9 :
	EventDataMM; D
?MMD E
responseMMF N
,MMN O
HashSetMMP W
<MMW X
	IActorRefMMX a
>MMa b
stillWaitingMMc o
,MMo p

DictionaryMMq {
<MM{ |
string	MM| �
,
MM� �
	EventData
MM� �
>
MM� �
repliesSoFar
MM� �
)
MM� �
{NN 	
ContextOO 
.OO 
UnwatchOO 
(OO 

eventActorOO &
)OO& '
;OO' (
ActorToEventIdPP 
.PP 
TryGetValuePP &
(PP& '

eventActorPP' 1
,PP1 2
outPP3 6
varPP7 :
eventIdPP; B
)PPB C
;PPC D
ifQQ 
(QQ 
eventIdQQ 
!=QQ 
nullQQ 
)QQ  
{RR 
stillWaitingSS 
.SS 
RemoveSS #
(SS# $

eventActorSS$ .
)SS. /
;SS/ 0
}TT 
ifVV 
(VV 
responseVV 
!=VV 
nullVV  
&&VV! #
checkParametersVV$ 3
(VV3 4
responseVV4 <
)VV< =
&&VV> @
eventIdVVA H
!=VVI K
nullVVL P
)VVP Q
{WW 
repliesSoFarXX 
.XX 
AddXX  
(XX  !
eventIdXX! (
,XX( )
responseXX* 2
)XX2 3
;XX3 4
}YY 
if[[ 
([[ 
stillWaiting[[ 
.[[ 
Count[[ "
==[[# %
$num[[& '
)[[' (
{\\ 
List]] 
<]] 
RespondEventsData]] &
.]]& '
	EventData]]' 0
>]]0 1
events]]2 8
=]]9 :
repliesSoFar]]; G
.]]G H
Values]]H N
.]]N O
Select]]O U
(]]U V
x]]V W
=>]]X Z
new]][ ^
RespondEventsData]]_ p
.]]p q
	EventData]]q z
(]]z {
x]]{ |
.]]| }
Id]]} 
,	]] �
x
]]� �
.
]]� �
Name
]]� �
)
]]� �
)
]]� �
.
]]� �
ToList
]]� �
(
]]� �
)
]]� �
;
]]� �
Random__ 
rnd__ 
=__ 
new__  
Random__! '
(__' (
)__( )
;__) *
if`` 
(`` 
rnd`` 
.`` 

NextDouble`` "
(``" #
)``# $
<``% &1
%ExternalCallSimulationFailProbability``' L
)``L M
{aa 
Logbb 
.bb 
Infobb 
(bb 
$strbb O
)bbO P
;bbP Q
throwcc 
newcc !
NoConnectionExceptioncc 3
(cc3 4
)cc4 5
;cc5 6
}dd 
	Requesteree 
.ee 
Tellee 
(ee 
newee "
RespondEventsDataee# 4
(ee4 5
	RequestIdee5 >
,ee> ?
eventsee@ F
)eeF G
)eeG H
;eeH I
}ff 
elsegg 
{hh 
Contextii 
.ii 
Becomeii 
(ii 
WaitingForRepliesii 0
(ii0 1
repliesSoFarii1 =
,ii= >
stillWaitingii? K
)iiK L
)iiL M
;iiM N
}jj 
}kk 	
	protectedmm 
overridemm 
voidmm 
	OnReceivemm  )
(mm) *
objectmm* 0
messagemm1 8
)mm8 9
{nn 	
}pp 	
publicrr 
staticrr 
Propsrr 
Propsrr !
(rr! "

Dictionaryrr" ,
<rr, -
	IActorRefrr- 6
,rr6 7
stringrr8 >
>rr> ?
actorToEventIdrr@ N
,rrN O
stringrrP V
	requestIdrrW `
,rr` a
	IActorRefrrb k
	requesterrrl u
,rru v
TimeSpanrrw 
timeout
rr� �
,
rr� �

Parameters
rr� �
@params
rr� �
)
rr� �
=>
rr� �
Akka
rr� �
.
rr� �
Actor
rr� �
.
rr� �
Props
rr� �
.
rr� �
Create
rr� �
(
rr� �
(
rr� �
)
rr� �
=>
rr� �
new
rr� �

EventQuery
rr� �
(
rr� �
actorToEventId
rr� �
,
rr� �
	requestId
rr� �
,
rr� �
	requester
rr� �
,
rr� �
timeout
rr� �
,
rr� �
@params
rr� �
)
rr� �
)
rr� �
;
rr� �
privatess 
boolss 
checkParametersss $
(ss$ %
	EventDatass% .
responsess/ 7
)ss7 8
{tt 	
booluu 
resultuu 
=uu 
trueuu 
;uu 
ifvv 
(vv 
Paramsvv 
.vv 
Namevv 
!=vv 
nullvv #
&&vv$ &
Paramsvv' -
.vv- .
Namevv. 2
.vv2 3
Lengthvv3 9
>vv: ;
$numvv< =
)vv= >
{ww 
resultxx 
=xx 
responsexx !
.xx! "
Namexx" &
.xx& '
ToLowerxx' .
(xx. /
)xx/ 0
.xx0 1

StartsWithxx1 ;
(xx; <
Paramsxx< B
.xxB C
NamexxC G
.xxG H
ToLowerxxH O
(xxO P
)xxP Q
)xxQ R
?xxS T
resultxxU [
:xx\ ]
falsexx^ c
;xxc d
}yy 
returnzz 
resultzz 
;zz 
}{{ 	
public|| 
class|| 

Parameters|| 
{}} 	
public~~ 

Parameters~~ 
(~~ 
string~~ $
name~~% )
)~~) *
{ 
Name
�� 
=
�� 
name
�� 
;
�� 
}
�� 
public
�� 
string
�� 
Name
�� 
{
��  
get
��! $
;
��$ %
}
��& '
}
�� 	
}
�� 
}�� ��
TC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Actors\Event.cs
	namespace

 	

AkkaTicket


 
.

 
Actors

 
{ 
public 

class 
Seat 
{ 
public 
Seat 
( 
string 
id 
, 
double %
price& +
)+ ,
{ 	
Id 
= 
id 
; 
Price 
= 
price 
; 
} 	
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
public 
double 
Price 
{ 
get !
;! "
set# &
;& '
}( )
} 
public 

static 
class 
EventStates #
{ 
public 
static 
readonly 
string %
ACTIVE& ,
=- .
$str/ 7
;7 8
public 
static 
readonly 
string %
CANCELED& .
=/ 0
$str1 ;
;; <
} 
public 

class 
Event 
: 
UntypedActor %
{ 
private 
string 
Id 
{ 
get 
;  
set! $
;$ %
}& '
private 
string 
Name 
{ 
get !
;! "
set# &
;& '
}( )
private 
double 
Duration 
{  !
get" %
;% &
set' *
;* +
}, -
private   
string   
Location   
{    !
get  " %
;  % &
set  ' *
;  * +
}  , -
private!! 
DateTime!! 
Date!! 
{!! 
get!!  #
;!!# $
set!!% (
;!!( )
}!!* +
private"" 
string"" 
Status"" 
{"" 
get""  #
;""# $
set""% (
;""( )
}""* +
private## 
List## 
<## 
Seat## 
>## 
	_seatList## $
=##% &
new##' *
(##* +
)##+ ,
;##, -
private$$ 

Dictionary$$ 
<$$ 
string$$ !
,$$! "
	IActorRef$$# ,
>$$, -$
seatIdToReservationActor$$. F
=$$G H
new$$I L
($$L M
)$$M N
;$$N O
private%% 

Dictionary%% 
<%% 
	IActorRef%% $
,%%$ %
string%%& ,
>%%, -$
reservationActorToSeatId%%. F
=%%G H
new%%I L
(%%L M
)%%M N
;%%N O
private&& 
static&& 
int&& "
FetchSimulationDelayMs&& 1
=&&2 3
$num&&4 8
;&&8 9
private'' 
static'' 
double'' &
FetchSimulationProbability'' 8
=''9 :
$num''; ?
;''? @
public(( 
Event(( 
((( 
string(( 
id(( 
,(( 
string((  &
name((' +
,((+ ,
double((- 3
duration((4 <
,((< =
string((> D
location((E M
,((M N
DateTime((O W
date((X \
,((\ ]
List((^ b
<((b c
CreateSeatData((c q
>((q r
seats((s x
)((x y
{)) 	
Id** 
=** 
id** 
;** 
Name++ 
=++ 
name++ 
;++ 
Duration,, 
=,, 
duration,, 
;,,  
Location-- 
=-- 
location-- 
;--  
Date.. 
=.. 
date.. 
;.. 
Status// 
=// 
EventStates//  
.//  !
ACTIVE//! '
;//' (
seats00 
.00 
ForEach00 
(00 
seat00 
=>00 !
	_seatList00" +
.00+ ,
Add00, /
(00/ 0
new000 3
Seat004 8
(008 9
Guid009 =
.00= >
NewGuid00> E
(00E F
)00F G
.00G H
ToString00H P
(00P Q
)00Q R
,00R S
seat00T X
.00X Y
Price00Y ^
)00^ _
)00_ `
)00` a
;00a b
}11 	
	protected33 
ILoggingAdapter33 !
Log33" %
{33& '
get33( +
;33+ ,
}33- .
=33/ 0
Context331 8
.338 9
	GetLogger339 B
(33B C
)33C D
;33D E
	protected55 
override55 
void55 
PreStart55  (
(55( )
)55) *
{66 	
Log77 
.77 
Info77 
(77 
$"77 
$str77 #
{77# $
Id77$ &
}77& '
$str77' (
{77( )
Name77) -
}77- .
$str77. /
{77/ 0
Location770 8
}778 9
$str779 :
{77: ;
Date77; ?
}77? @
$str77@ H
"77H I
)77I J
;77J K
}88 	
	protected:: 
override:: 
void:: 
PostStop::  (
(::( )
)::) *
{;; 	
Log<< 
.<< 
Info<< 
(<< 
$"<< 
$str<< #
{<<# $
Id<<$ &
}<<& '
$str<<' (
{<<( )
Name<<) -
}<<- .
$str<<. /
{<</ 0
Location<<0 8
}<<8 9
$str<<9 :
{<<: ;
Date<<; ?
}<<? @
$str<<@ H
"<<H I
)<<I J
;<<J K
}== 	
	protected?? 
override?? 
async??  
void??! %
	OnReceive??& /
(??/ 0
object??0 6
message??7 >
)??> ?
{@@ 	
switchAA 
(AA 
messageAA 
)AA 
{BB 
caseCC 
ReadEventDataCC "
readMsgCC# *
:CC* +
varDD 
availableSeatsDD &
=DD' (
	_seatListDD) 2
.DD2 3
WhereDD3 8
(DD8 9
seatDD9 =
=>DD> @
!DDA B$
seatIdToReservationActorDDB Z
.DDZ [
ContainsKeyDD[ f
(DDf g
seatDDg k
.DDk l
IdDDl n
)DDn o
)DDo p
.DDp q
ToListDDq w
(DDw x
)DDx y
;DDy z
varEE 
senderEE 
=EE  
SenderEE! '
;EE' (
RandomFF 
rndFF 
=FF  
newFF! $
RandomFF% +
(FF+ ,
)FF, -
;FF- .
ifGG 
(GG 
rndGG 
.GG 

NextDoubleGG &
(GG& '
)GG' (
<GG) *&
FetchSimulationProbabilityGG+ E
)GGE F
{HH 
awaitII 
TaskII "
.II" #
DelayII# (
(II( )"
FetchSimulationDelayMsII) ?
)II? @
;II@ A
}JJ 
senderKK 
.KK 
TellKK 
(KK  
newKK  #
	EventDataKK$ -
(KK- .
readMsgKK. 5
.KK5 6
	RequestIdKK6 ?
,KK? @
IdKKA C
,KKC D
NameKKE I
,KKI J
DurationKKK S
,KKS T
LocationKKU ]
,KK] ^
DateKK_ c
,KKc d
StatusKKe k
,KKk l
	_seatListKKm v
.KKv w
CountKKw |
,KK| }
availableSeats	KK~ �
.
KK� �
Count
KK� �
(
KK� �
)
KK� �
,
KK� �
availableSeats
KK� �
)
KK� �
)
KK� �
;
KK� �
breakLL 
;LL 
caseMM  
RequestReadEventDataMM )
readMsgMM* 1
whenMM2 6
readMsgMM7 >
.MM> ?
EventIdMM? F
.MMF G
EqualsMMG M
(MMM N
thisMMN R
.MMR S
IdMMS U
)MMU V
:MMV W
availableSeatsNN "
=NN# $
	_seatListNN% .
.NN. /
WhereNN/ 4
(NN4 5
seatNN5 9
=>NN: <
!NN= >$
seatIdToReservationActorNN> V
.NNV W
ContainsKeyNNW b
(NNb c
seatNNc g
.NNg h
IdNNh j
)NNj k
)NNk l
.NNl m
ToListNNm s
(NNs t
)NNt u
;NNu v
varOO 
cheapestSeatOO $
=OO% &
	_seatListOO' 0
.OO0 1
MinOO1 4
(OO4 5
seatOO5 9
=>OO: <
seatOO= A
.OOA B
PriceOOB G
)OOG H
;OOH I
varPP 
routerPP 
=PP  
ContextPP! (
.PP( )
SystemPP) /
.PP/ 0
ActorSelectionPP0 >
(PP> ?
$strPP? ]
)PP] ^
;PP^ _
senderQQ 
=QQ 
SenderQQ #
;QQ# $
cheapestSeatRR  
=RR! "
awaitRR# (
routerRR) /
.RR/ 0
AskRR0 3
<RR3 4
doubleRR4 :
>RR: ;
(RR; <
newRR< ?
ExchangeCurrencyRR@ P
(RRP Q
readMsgRRQ X
.RRX Y
CurrencyRRY a
,RRa b
cheapestSeatRRc o
)RRo p
)RRp q
;RRq r
senderSS 
.SS 
TellSS 
(SS  
newSS  #
RespondEventDataSS$ 4
(SS4 5
readMsgSS5 <
.SS< =
	RequestIdSS= F
,SSF G
IdSSH J
,SSJ K
NameSSL P
,SSP Q
DurationSSR Z
,SSZ [
LocationSS\ d
,SSd e
DateSSf j
,SSj k
StatusSSl r
,SSr s
	_seatListSSt }
.SS} ~
Count	SS~ �
,
SS� �
availableSeats
SS� �
.
SS� �
Count
SS� �
(
SS� �
)
SS� �
,
SS� �
availableSeats
SS� �
,
SS� �
cheapestSeat
SS� �
)
SS� �
)
SS� �
;
SS� �
breakTT 
;TT 
caseUU  
RequestReadEventDataUU )
readMsgUU* 1
:UU1 2
LogVV 
.VV 
WarningVV 
(VV  
$"VV  "
$strVV" E
{VVE F
readMsgVVF M
.VVM N
EventIdVVN U
}VVU V
$strVVV v
{VVv w
thisVVw {
.VV{ |
IdVV| ~
}VV~ 
"	VV �
)
VV� �
;
VV� �
breakWW 
;WW 
caseXX 
RequestChangeEventXX '!
requestChangeEventMsgXX( =
whenXX> B!
requestChangeEventMsgXXC X
.XXX Y
EventIdXXY `
.XX` a
EqualsXXa g
(XXg h
thisXXh l
.XXl m
IdXXm o
)XXo p
:XXp q
thisYY 
.YY 
NameYY 
=YY !
requestChangeEventMsgYY  5
.YY5 6
NameYY6 :
;YY: ;
thisZZ 
.ZZ 
DurationZZ !
=ZZ" #!
requestChangeEventMsgZZ$ 9
.ZZ9 :
DurationZZ: B
;ZZB C
this[[ 
.[[ 
Location[[ !
=[[" #!
requestChangeEventMsg[[$ 9
.[[9 :
Location[[: B
;[[B C
this\\ 
.\\ 
Date\\ 
=\\ !
requestChangeEventMsg\\  5
.\\5 6
Date\\6 :
;\\: ;
availableSeats]] "
=]]# $
	_seatList]]% .
.]]. /
Where]]/ 4
(]]4 5
seat]]5 9
=>]]: <
!]]= >$
seatIdToReservationActor]]> V
.]]V W
ContainsKey]]W b
(]]b c
seat]]c g
.]]g h
Id]]h j
)]]j k
)]]k l
.]]l m
ToList]]m s
(]]s t
)]]t u
;]]u v
cheapestSeat^^  
=^^! "
	_seatList^^# ,
.^^, -
Min^^- 0
(^^0 1
seat^^1 5
=>^^6 8
seat^^9 =
.^^= >
Price^^> C
)^^C D
;^^D E$
reservationActorToSeatId__ ,
.__, -
Keys__- 1
.__1 2
ForEach__2 9
(__9 :
reservationActor__: J
=>__K M
reservationActor__N ^
.__^ _
Tell___ c
(__c d
new__d g
EventChanged__h t
(__t u"
requestChangeEventMsg	__u �
.
__� �
	RequestId
__� �
)
__� �
)
__� �
)
__� �
;
__� �
Sender`` 
.`` 
Tell`` 
(``  
new``  #
RespondEventData``$ 4
(``4 5!
requestChangeEventMsg``5 J
.``J K
	RequestId``K T
,``T U
Id``V X
,``X Y
Name``Z ^
,``^ _
Duration``` h
,``h i
Location``j r
,``r s
Date``t x
,``x y
Status	``z �
,
``� �
	_seatList
``� �
.
``� �
Count
``� �
,
``� �
availableSeats
``� �
.
``� �
Count
``� �
(
``� �
)
``� �
,
``� �
availableSeats
``� �
,
``� �
cheapestSeat
``� �
)
``� �
)
``� �
;
``� �
breakaa 
;aa 
casebb 
RequestCancelEventbb '!
requestCancelEventMsgbb( =
whenbb> B!
requestCancelEventMsgbbC X
.bbX Y
EventIdbbY `
.bb` a
Equalsbba g
(bbg h
thisbbh l
.bbl m
Idbbm o
)bbo p
:bbp q
thiscc 
.cc 
Statuscc 
=cc  !
EventStatescc" -
.cc- .
CANCELEDcc. 6
;cc6 7$
reservationActorToSeatIddd ,
.dd, -
Keysdd- 1
.dd1 2
ForEachdd2 9
(dd9 :
reservationActordd: J
=>ddK M
reservationActorddN ^
.dd^ _
Telldd_ c
(ddc d
newddd g
EventCancelledddh v
(ddv w"
requestCancelEventMsg	ddw �
.
dd� �
	RequestId
dd� �
)
dd� �
)
dd� �
)
dd� �
;
dd� �$
seatIdToReservationActoree ,
.ee, -
Clearee- 2
(ee2 3
)ee3 4
;ee4 5$
reservationActorToSeatIdff ,
.ff, -
Clearff- 2
(ff2 3
)ff3 4
;ff4 5
Sendergg 
.gg 
Tellgg 
(gg  
newgg  #!
RespondEventCancelledgg$ 9
(gg9 :!
requestCancelEventMsggg: O
.ggO P
	RequestIdggP Y
,ggY Z
Idgg[ ]
)gg] ^
)gg^ _
;gg_ `
breakhh 
;hh 
caseii 
ReservationRequestii '!
reservationRequestMsgii( =
:ii= >
ifjj 
(jj $
seatIdToReservationActorjj 0
.jj0 1
ContainsKeyjj1 <
(jj< =!
reservationRequestMsgjj= R
.jjR S
SeatIdjjS Y
)jjY Z
)jjZ [
{kk 
Senderll 
.ll 
Tellll #
(ll# $
newll$ '"
ReservationDeclinationll( >
(ll> ?!
reservationRequestMsgll? T
.llT U
	RequestIdllU ^
)ll^ _
)ll_ `
;ll` a
}mm 
elsenn 
{oo $
seatIdToReservationActorpp 0
.pp0 1
Addpp1 4
(pp4 5!
reservationRequestMsgpp5 J
.ppJ K
SeatIdppK Q
,ppQ R!
reservationRequestMsgppS h
.pph i
ReservationActorRefppi |
)pp| }
;pp} ~$
reservationActorToSeatIdqq 0
.qq0 1
Addqq1 4
(qq4 5!
reservationRequestMsgqq5 J
.qqJ K
ReservationActorRefqqK ^
,qq^ _!
reservationRequestMsgqq` u
.qqu v
SeatIdqqv |
)qq| }
;qq} ~
Contextrr 
.rr  
Watchrr  %
(rr% &!
reservationRequestMsgrr& ;
.rr; <
ReservationActorRefrr< O
)rrO P
;rrP Q
Senderss 
.ss 
Tellss #
(ss# $
newss$ '#
ReservationConfirmationss( ?
(ss? @!
reservationRequestMsgss@ U
.ssU V
	RequestIdssV _
,ss_ `!
reservationRequestMsgssa v
.ssv w
SeatIdssw }
)ss} ~
)ss~ 
;	ss �
}tt 
breakuu 
;uu 
casevv  
ReservationCancelledvv )#
reservationCancelledMsgvv* A
:vvA B
ifww 
(ww $
reservationActorToSeatIdww /
.ww/ 0
ContainsKeyww0 ;
(ww; <
Senderww< B
)wwB C
)wwC D
{xx 
varyy 
seatIdyy "
=yy# $$
reservationActorToSeatIdyy% =
[yy= >
Senderyy> D
]yyD E
;yyE F$
seatIdToReservationActorzz 0
.zz0 1
Removezz1 7
(zz7 8
seatIdzz8 >
)zz> ?
;zz? @$
reservationActorToSeatId{{ 0
.{{0 1
Remove{{1 7
({{7 8
Sender{{8 >
){{> ?
;{{? @
}|| 
break}} 
;}} 
}~~ 
} 	
public
�� 
static
�� 
Props
�� 
Props
�� !
(
��! "
string
��" (
id
��) +
,
��+ ,
string
��- 3
name
��4 8
,
��8 9
double
��: @
duration
��A I
,
��I J
string
��K Q
location
��R Z
,
��Z [
DateTime
��\ d
date
��e i
,
��i j
List
��k o
<
��o p
CreateSeatData
��p ~
>
��~ 
seats��� �
)��� �
=>��� �
Akka��� �
.��� �
Actor��� �
.��� �
Props��� �
.��� �
Create��� �
(��� �
(��� �
)��� �
=>��� �
new��� �
Event��� �
(��� �
id��� �
,��� �
name��� �
,��� �
duration��� �
,��� �
location��� �
,��� �
date��� �
,��� �
seats��� �
)��� �
)��� �
;��� �
}
�� 
}�� �
_C:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Actors\CurrencyExchange.cs
	namespace 	

AkkaTicket
 
. 
Actors 
{ 
public 

class 
CurrencyExchange !
:" #
UntypedActor$ 0
{ 
private		 
static		 
bool		 
ShouldDelay		 '
=		( )
true		* .
;		. /
public

 
CurrencyExchange

 
(

  
)

  !
{

" #
}

$ %
	protected 
ILoggingAdapter !
Log" %
{& '
get( +
;+ ,
}- .
=/ 0
Context1 8
.8 9
	GetLogger9 B
(B C
)C D
;D E
	protected 
override 
void 
PreStart  (
(( )
)) *
{ 	
Log 
. 
Info 
( 
$" 
$str 6
"6 7
)7 8
;8 9
} 	
	protected 
override 
void 
PostStop  (
(( )
)) *
{ 	
Log 
. 
Info 
( 
$" 
$str 6
"6 7
)7 8
;8 9
} 	
private 
double 
CurrencyRate #
(# $
string$ *
currency+ 3
)3 4
{ 	
switch 
( 
currency 
) 
{ 
case 
$str 
: 
return 
$num 
; 
case 
$str 
: 
return 
$num 
;  
case 
$str 
: 
return 
$num 
;  
default   
:   
throw!! 
new!! 
ArgumentException!! /
(!!/ 0
)!!0 1
;!!1 2
}"" 
}## 	
	protected%% 
override%% 
async%%  
void%%! %
	OnReceive%%& /
(%%/ 0
object%%0 6
message%%7 >
)%%> ?
{&& 	
switch'' 
('' 
message'' 
)'' 
{(( 
case)) 
ExchangeCurrency)) %
exchangeCurrency))& 6
:))6 7
var** 
sender** 
=**  
Sender**! '
;**' (
if++ 
(++ 
ShouldDelay++ #
)++# $
{,, 
Log-- 
.-- 
Info--  
(--  !
$str--! 4
)--4 5
;--5 6
await.. 
Task.. "
..." #
Delay..# (
(..( )
$num..) -
)..- .
;... /
}// 
Log00 
.00 
Info00 
(00 
$"00 
$str00 6
{006 7
exchangeCurrency007 G
.00G H
Amount00H N
}00N O
$str00O Q
{00Q R
exchangeCurrency00R b
.00b c
Currency00c k
}00k l
"00l m
)00m n
;00n o
sender11 
.11 
Tell11 
(11  
exchangeCurrency11  0
.110 1
Amount111 7
*118 9
CurrencyRate11: F
(11F G
exchangeCurrency11G W
.11W X
Currency11X `
)11` a
)11a b
;11b c
break22 
;22 
}33 
}44 	
public66 
static66 
Props66 
Props66 !
(66! "
)66" #
=>66$ &
Akka66' +
.66+ ,
Actor66, 1
.661 2
Props662 7
.667 8
Create668 >
(66> ?
(66? @
)66@ A
=>66B D
new66E H
CurrencyExchange66J Z
(66Z [
)66[ \
)66\ ]
;66] ^
}77 
}88 ͉
]C:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Actors\BookingManager.cs
	namespace		 	

AkkaTicket		
 
.		 
Actors		 
{

 
public 

class 
BookingManager 
:  !
UntypedActor" .
{ 
private 

Dictionary 
< 
string !
,! "
	IActorRef# ,
>, -
eventIdToActor. <
== >
new? B
(B C
)C D
;D E
private 

Dictionary 
< 
	IActorRef $
,$ %
string& ,
>, -
actorToEventId. <
=< =
new> A
(A B
)B C
;C D
private 

Dictionary 
< 
string !
,! "
	IActorRef# ,
>, - 
reservationIdToActor. B
=C D
newE H
(H I
)I J
;J K
private 

Dictionary 
< 
	IActorRef $
,$ %
string& ,
>, - 
actorToReservationId. B
=C D
newE H
(H I
)I J
;J K
public 
BookingManager 
( 
) 
{  !
}" #
	protected 
ILoggingAdapter !
Log" %
{& '
get( +
;+ ,
}- .
=/ 0
Context1 8
.8 9
	GetLogger9 B
(B C
)C D
;D E
	protected 
override 
void 
PreStart  (
(( )
)) *
=>+ -
Log. 1
.1 2
Info2 6
(6 7
$"7 9
$str9 O
"O P
)P Q
;Q R
	protected 
override 
void 
PostStop  (
(( )
)) *
=>+ -
Log. 1
.1 2
Info2 6
(6 7
$"7 9
$str9 O
"O P
)P Q
;Q R
	protected 
override 
SupervisorStrategy -
SupervisorStrategy. @
(@ A
)A B
{ 	
return 
new 
OneForOneStrategy (
(( )
maxNrOfRetries 
: 
$num  "
," #
withinTimeRange 
:  
TimeSpan! )
.) *
FromMinutes* 5
(5 6
$num6 7
)7 8
,8 9
localOnlyDecider  
:  !
ex" $
=>% '
{ 
switch 
( 
ex 
) 
{ 
case   !
NoConnectionException   2
nce  3 6
:  6 7
Log!! 
.!!  
Info!!  $
(!!$ %
$str!!% 7
)!!7 8
;!!8 9
return"" "
	Directive""# ,
."", -
Restart""- 4
;""4 5
default## 
:##  
return$$ "
	Directive$$# ,
.$$, -
Escalate$$- 5
;$$5 6
}%% 
}&& 
)&& 
;&& 
}'' 	
	protected(( 
override(( 
void(( 
	OnReceive((  )
((() *
object((* 0
message((1 8
)((8 9
{)) 	
switch** 
(** 
message** 
)** 
{++ 
case,, 
RequestCreateEvent,, '!
requestCreateEventMsg,,( =
:,,= >
Log-- 
.-- 
Info-- 
(-- 
$"-- 
$str-- 8
{--8 9!
requestCreateEventMsg--9 N
.--N O
Name--O S
}--S T
"--T U
)--U V
;--V W
var.. 
eventId.. 
=..  !
Guid.." &
...& '
NewGuid..' .
(... /
)../ 0
...0 1
ToString..1 9
(..9 :
)..: ;
;..; <
var// 

eventActor// "
=//# $
Context//% ,
.//, -
ActorOf//- 4
(//4 5
Event//5 :
.//: ;
Props//; @
(//@ A
eventId//A H
,//H I!
requestCreateEventMsg//J _
.//_ `
Name//` d
,//d e!
requestCreateEventMsg//f {
.//{ |
Duration	//| �
,
//� �#
requestCreateEventMsg
//� �
.
//� �
Location
//� �
,
//� �#
requestCreateEventMsg
//� �
.
//� �
Date
//� �
,
//� �#
requestCreateEventMsg
//� �
.
//� �
Seats
//� �
)
//� �
,
//� �
$"
//� �
$str
//� �
{
//� �
eventId
//� �
}
//� �
"
//� �
)
//� �
;
//� �
Context00 
.00 
Watch00 !
(00! "

eventActor00" ,
)00, -
;00- .
eventIdToActor11 "
.11" #
Add11# &
(11& '
eventId11' .
,11. /

eventActor110 :
)11: ;
;11; <
actorToEventId22 "
.22" #
Add22# &
(22& '

eventActor22' 1
,221 2
eventId223 :
)22: ;
;22; <
Sender33 
.33 
Tell33 
(33  
new33  #
RespondEventCreated33$ 7
(337 8!
requestCreateEventMsg338 M
.33M N
	RequestId33N W
,33W X
eventId33Y `
)33` a
)33a b
;33b c
break44 
;44 
case55 
RequestReadEvents55 & 
requestReadEventsMsg55' ;
:55; <
Context66 
.66 
ActorOf66 #
(66# $

EventQuery66$ .
.66. /
Props66/ 4
(664 5
new665 8

Dictionary669 C
<66C D
	IActorRef66D M
,66M N
string66O U
>66U V
(66V W
actorToEventId66W e
)66e f
,66f g 
requestReadEventsMsg66h |
.66| }
	RequestId	66} �
,
66� �
Sender
66� �
,
66� �
TimeSpan
66� �
.
66� �
FromSeconds
66� �
(
66� �
$num
66� �
)
66� �
,
66� �
new
66� �

EventQuery
66� �
.
66� �

Parameters
66� �
(
66� �"
requestReadEventsMsg
66� �
.
66� �
Name
66� �
)
66� �
)
66� �
,
66� �
$"
66� �
$str
66� �
{
66� �"
requestReadEventsMsg
66� �
.
66� �
	RequestId
66� �
}
66� �
"
66� �
)
66� �
;
66� �
break77 
;77 
case88  
RequestReadEventData88 )
readEventDataMsg88* :
:88: ;
if99 
(99 
!99 
eventIdToActor99 '
.99' (
TryGetValue99( 3
(993 4
readEventDataMsg994 D
.99D E
EventId99E L
,99L M
out99N Q
var99R U
actorRef99V ^
)99^ _
)99_ `
{:: 
Log;; 
.;; 
Warning;; #
(;;# $
$";;$ &
$str;;& 6
{;;6 7
readEventDataMsg;;7 G
.;;G H
EventId;;H O
};;O P
$str;;P _
";;_ `
);;` a
;;;a b
Sender<< 
.<< 
Tell<< #
(<<# $
new<<$ '$
RespondEventDoesNotExist<<( @
(<<@ A
readEventDataMsg<<A Q
.<<Q R
	RequestId<<R [
)<<[ \
)<<\ ]
;<<] ^
break== 
;== 
}>> 
actorRef@@ 
.@@ 
Forward@@ $
(@@$ %
readEventDataMsg@@% 5
)@@5 6
;@@6 7
breakAA 
;AA 
caseBB 
RequestChangeEventBB '!
requestChangeEventMsgBB( =
:BB= >
ifCC 
(CC 
!CC 
eventIdToActorCC '
.CC' (
TryGetValueCC( 3
(CC3 4!
requestChangeEventMsgCC4 I
.CCI J
EventIdCCJ Q
,CCQ R
outCCS V
actorRefCCW _
)CC_ `
)CC` a
{DD 
LogEE 
.EE 
WarningEE #
(EE# $
$"EE$ &
$strEE& 6
{EE6 7!
requestChangeEventMsgEE7 L
.EEL M
EventIdEEM T
}EET U
$strEEU d
"EEd e
)EEe f
;EEf g
SenderFF 
.FF 
TellFF #
(FF# $
newFF$ '$
RespondEventDoesNotExistFF( @
(FF@ A!
requestChangeEventMsgFFA V
.FFV W
	RequestIdFFW `
)FF` a
)FFa b
;FFb c
breakGG 
;GG 
}HH 
actorRefJJ 
.JJ 
ForwardJJ $
(JJ$ %!
requestChangeEventMsgJJ% :
)JJ: ;
;JJ; <
breakKK 
;KK 
caseLL 
RequestCancelEventLL '!
requestCancelEventMsgLL( =
:LL= >
ifMM 
(MM 
!MM 
eventIdToActorMM '
.MM' (
TryGetValueMM( 3
(MM3 4!
requestCancelEventMsgMM4 I
.MMI J
EventIdMMJ Q
,MMQ R
outMMS V
actorRefMMW _
)MM_ `
)MM` a
{NN 
LogOO 
.OO 
WarningOO #
(OO# $
$"OO$ &
$strOO& 6
{OO6 7!
requestCancelEventMsgOO7 L
.OOL M
EventIdOOM T
}OOT U
$strOOU d
"OOd e
)OOe f
;OOf g
SenderPP 
.PP 
TellPP #
(PP# $
newPP$ '$
RespondEventDoesNotExistPP( @
(PP@ A!
requestCancelEventMsgPPA V
.PPV W
	RequestIdPPW `
)PP` a
)PPa b
;PPb c
breakQQ 
;QQ 
}RR 
actorRefTT 
.TT 
ForwardTT $
(TT$ %!
requestCancelEventMsgTT% :
)TT: ;
;TT; <
breakUU 
;UU 
caseVV 
RequestReserveSeatVV '
reserveSeatVV( 3
:VV3 4
ifWW 
(WW 
!WW 
eventIdToActorWW '
.WW' (
TryGetValueWW( 3
(WW3 4
reserveSeatWW4 ?
.WW? @
EventIdWW@ G
,WWG H
outWWI L
varWWM P
eventRefWWQ Y
)WWY Z
)WWZ [
{XX 
LogYY 
.YY 
WarningYY #
(YY# $
$"YY$ &
$strYY& 6
{YY6 7
reserveSeatYY7 B
.YYB C
EventIdYYC J
}YYJ K
$strYYK Z
"YYZ [
)YY[ \
;YY\ ]
SenderZZ 
.ZZ 
TellZZ #
(ZZ# $
newZZ$ '$
RespondEventDoesNotExistZZ( @
(ZZ@ A
reserveSeatZZA L
.ZZL M
	RequestIdZZM V
)ZZV W
)ZZW X
;ZZX Y
break[[ 
;[[ 
}\\ 
var^^ 
reservationId^^ %
=^^& '
Guid^^( ,
.^^, -
NewGuid^^- 4
(^^4 5
)^^5 6
.^^6 7
ToString^^7 ?
(^^? @
)^^@ A
;^^A B
var__ 
reservationActor__ (
=__) *
Context__+ 2
.__2 3
ActorOf__3 :
(__: ;
Reservation__; F
.__F G
Props__G L
(__L M
reservationId__M Z
,__Z [
reserveSeat__\ g
.__g h
EventId__h o
,__o p
eventRef__q y
)__y z
,__z {
$"__| ~
$str	__~ �
{
__� �
reservationId
__� �
}
__� �
"
__� �
)
__� �
;
__� �
Context`` 
.`` 
Watch`` !
(``! "
reservationActor``" 2
)``2 3
;``3 4 
reservationIdToActoraa (
.aa( )
Addaa) ,
(aa, -
reservationIdaa- :
,aa: ;
reservationActoraa< L
)aaL M
;aaM N 
actorToReservationIdbb (
.bb( )
Addbb) ,
(bb, -
reservationActorbb- =
,bb= >
reservationIdbb? L
)bbL M
;bbM N
reservationActorcc $
.cc$ %
Forwardcc% ,
(cc, -
reserveSeatcc- 8
)cc8 9
;cc9 :
breakdd 
;dd 
caseee &
RequestReadReservationDataee /"
readReservationDataMsgee0 F
:eeF G
ifff 
(ff 
!ff  
reservationIdToActorff -
.ff- .
TryGetValueff. 9
(ff9 :"
readReservationDataMsgff: P
.ffP Q
ReservationIdffQ ^
,ff^ _
outff` c
varffd g
reservationRefffh v
)ffv w
)ffw x
{gg 
Loghh 
.hh 
Warninghh #
(hh# $
$"hh$ &
$strhh& <
{hh< ="
readReservationDataMsghh= S
.hhS T
ReservationIdhhT a
}hha b
$strhhb q
"hhq r
)hhr s
;hhs t
Senderii 
.ii 
Tellii #
(ii# $
newii$ '*
RespondReservationDoesNotExistii( F
(iiF G"
readReservationDataMsgiiG ]
.ii] ^
	RequestIdii^ g
)iig h
)iih i
;iii j
breakjj 
;jj 
}kk 
reservationRefmm "
.mm" #
Forwardmm# *
(mm* +"
readReservationDataMsgmm+ A
)mmA B
;mmB C
breaknn 
;nn 
caseoo $
RequestCancelReservationoo - 
cancelReservationMsgoo. B
:ooB C
ifpp 
(pp 
!pp  
reservationIdToActorpp -
.pp- .
TryGetValuepp. 9
(pp9 : 
cancelReservationMsgpp: N
.ppN O
ReservationIdppO \
,pp\ ]
outpp^ a
reservationRefppb p
)ppp q
)ppq r
{qq 
Logrr 
.rr 
Warningrr #
(rr# $
$"rr$ &
$strrr& <
{rr< = 
cancelReservationMsgrr= Q
.rrQ R
ReservationIdrrR _
}rr_ `
$strrr` o
"rro p
)rrp q
;rrq r
Senderss 
.ss 
Tellss #
(ss# $
newss$ '*
RespondReservationDoesNotExistss( F
(ssF G 
cancelReservationMsgssG [
.ss[ \
	RequestIdss\ e
)sse f
)ssf g
;ssg h
breaktt 
;tt 
}uu 
reservationRefww "
.ww" #
Forwardww# *
(ww* + 
cancelReservationMsgww+ ?
)ww? @
;ww@ A
breakxx 
;xx 
caseyy 

Terminatedyy 
tyy  !
:yy! "
ifzz 
(zz 
actorToEventIdzz &
.zz& '
ContainsKeyzz' 2
(zz2 3
tzz3 4
.zz4 5
ActorRefzz5 =
)zz= >
)zz> ?
{{{ 
eventId|| 
=||  !
actorToEventId||" 0
[||0 1
t||1 2
.||2 3
ActorRef||3 ;
]||; <
;||< =
Log}} 
.}} 
Info}}  
(}}  !
$"}}! #
$str}}# 3
{}}3 4
eventId}}4 ;
}}}; <
$str}}< P
"}}P Q
)}}Q R
;}}R S
actorToEventId~~ &
.~~& '
Remove~~' -
(~~- .
t~~. /
.~~/ 0
ActorRef~~0 8
)~~8 9
;~~9 :
eventIdToActor &
.& '
Remove' -
(- .
eventId. 5
)5 6
;6 7
}
�� 
if
�� 
(
�� "
actorToReservationId
�� ,
.
��, -
ContainsKey
��- 8
(
��8 9
t
��9 :
.
��: ;
ActorRef
��; C
)
��C D
)
��D E
{
�� 
reservationId
�� %
=
��& '"
actorToReservationId
��( <
[
��< =
t
��= >
.
��> ?
ActorRef
��? G
]
��G H
;
��H I
Log
�� 
.
�� 
Info
��  
(
��  !
$"
��! #
$str
��# 9
{
��9 :
reservationId
��: G
}
��G H
$str
��H \
"
��\ ]
)
��] ^
;
��^ _"
actorToReservationId
�� ,
.
��, -
Remove
��- 3
(
��3 4
t
��4 5
.
��5 6
ActorRef
��6 >
)
��> ?
;
��? @"
reservationIdToActor
�� ,
.
��, -
Remove
��- 3
(
��3 4
reservationId
��4 A
)
��A B
;
��B C
}
�� 
break
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
static
�� 
Props
�� 
Props
�� !
(
��! "
)
��" #
=>
��$ &
Akka
��' +
.
��+ ,
Actor
��, 1
.
��1 2
Props
��2 7
.
��7 8
Create
��8 >
<
��> ?
BookingManager
��? M
>
��M N
(
��N O
)
��O P
;
��P Q
}
�� 
}�� Æ
gC:\Users\mkuczynski11\Desktop\magisterka\repos\AkkaTicket\AkkaTicket\Actors\Alternative\EventReceive.cs
	namespace 	

AkkaTicket
 
. 
Alternative  
.  !
Actors! '
{ 
public 

class 
Event 
: 
ReceiveActor %
{ 
private 
string 
Id 
{ 
get 
;  
set! $
;$ %
}& '
private 
string 
Name 
{ 
get !
;! "
set# &
;& '
}( )
private 
double 
Duration 
{  !
get" %
;% &
set' *
;* +
}, -
private 
string 
Location 
{  !
get" %
;% &
set' *
;* +
}, -
private 
DateTime 
Date 
{ 
get  #
;# $
set% (
;( )
}* +
private 
string 
Status 
{ 
get  #
;# $
set% (
;( )
}* +
private 
List 
< 
Seat 
> 
	_seatList $
=% &
new' *
(* +
)+ ,
;, -
private 

Dictionary 
< 
string !
,! "
	IActorRef# ,
>, -$
seatIdToReservationActor. F
=G H
newI L
(L M
)M N
;N O
private 

Dictionary 
< 
	IActorRef $
,$ %
string& ,
>, -$
reservationActorToSeatId. F
=G H
newI L
(L M
)M N
;N O
private 
static 
int "
FetchSimulationDelayMs 1
=2 3
$num4 8
;8 9
private 
static 
double &
FetchSimulationProbability 8
=9 :
$num; ?
;? @
public 
Event 
( 
string 
id 
, 
string  &
name' +
,+ ,
double- 3
duration4 <
,< =
string> D
locationE M
,M N
DateTimeO W
dateX \
,\ ]
List^ b
<b c
CreateSeatDatac q
>q r
seatss x
)x y
{ 	
Id 
= 
id 
; 
Name 
= 
name 
; 
Duration 
= 
duration 
;  
Location 
= 
location 
;  
Date   
=   
date   
;   
Status!! 
=!! 
EventStates!!  
.!!  !
ACTIVE!!! '
;!!' (
seats"" 
."" 
ForEach"" 
("" 
seat"" 
=>"" !
	_seatList""" +
.""+ ,
Add"", /
(""/ 0
new""0 3
Seat""4 8
(""8 9
Guid""9 =
.""= >
NewGuid""> E
(""E F
)""F G
.""G H
ToString""H P
(""P Q
)""Q R
,""R S
seat""T X
.""X Y
Price""Y ^
)""^ _
)""_ `
)""` a
;""a b
Receive$$ 
<$$ 
ReadEventData$$ !
>$$! "
($$" #
async$$# (
message$$) 0
=>$$1 3
{$$4 5
var%% 
availableSeats%% "
=%%# $
	_seatList%%% .
.%%. /
Where%%/ 4
(%%4 5
seat%%5 9
=>%%: <
!%%= >$
seatIdToReservationActor%%> V
.%%V W
ContainsKey%%W b
(%%b c
seat%%c g
.%%g h
Id%%h j
)%%j k
)%%k l
.%%l m
ToList%%m s
(%%s t
)%%t u
;%%u v
var&& 
sender&& 
=&&  
Sender&&! '
;&&' (
Random'' 
rnd'' 
=''  
new''! $
Random''% +
(''+ ,
)'', -
;''- .
if(( 
((( 
rnd(( 
.(( 

NextDouble(( &
(((& '
)((' (
<(() *&
FetchSimulationProbability((+ E
)((E F
{)) 
await** 
Task** "
.**" #
Delay**# (
(**( )"
FetchSimulationDelayMs**) ?
)**? @
;**@ A
}++ 
sender,, 
.,, 
Tell,, 
(,,  
new,,  #
	EventData,,$ -
(,,- .
message,,. 5
.,,5 6
	RequestId,,6 ?
,,,? @
Id,,A C
,,,C D
Name,,E I
,,,I J
Duration,,K S
,,,S T
Location,,U ]
,,,] ^
Date,,_ c
,,,c d
Status,,e k
,,,k l
	_seatList,,m v
.,,v w
Count,,w |
,,,| }
availableSeats	,,~ �
.
,,� �
Count
,,� �
(
,,� �
)
,,� �
,
,,� �
availableSeats
,,� �
)
,,� �
)
,,� �
;
,,� �
}-- 
)-- 
;-- 
Receive.. 
<..  
RequestReadEventData.. (
>..( )
(..) *
async..* /
message..0 7
=>..8 :
{..; <
var// 
availableSeats// "
=//# $
	_seatList//% .
.//. /
Where/// 4
(//4 5
seat//5 9
=>//: <
!//= >$
seatIdToReservationActor//> V
.//V W
ContainsKey//W b
(//b c
seat//c g
.//g h
Id//h j
)//j k
)//k l
.//l m
ToList//m s
(//s t
)//t u
;//u v
var00 
cheapestSeat00 $
=00% &
	_seatList00' 0
.000 1
Min001 4
(004 5
seat005 9
=>00: <
seat00= A
.00A B
Price00B G
)00G H
;00H I
var11 
router11 
=11  
Context11! (
.11( )
System11) /
.11/ 0
ActorSelection110 >
(11> ?
$str11? ]
)11] ^
;11^ _
var22 
sender22 
=22  
Sender22! '
;22' (
cheapestSeat33  
=33! "
await33# (
router33) /
.33/ 0
Ask330 3
<333 4
double334 :
>33: ;
(33; <
new33< ?
ExchangeCurrency33@ P
(33P Q
message33Q X
.33X Y
Currency33Y a
,33a b
cheapestSeat33c o
)33o p
)33p q
;33q r
sender44 
.44 
Tell44 
(44  
new44  #
RespondEventData44$ 4
(444 5
message445 <
.44< =
	RequestId44= F
,44F G
Id44H J
,44J K
Name44L P
,44P Q
Duration44R Z
,44Z [
Location44\ d
,44d e
Date44f j
,44j k
Status44l r
,44r s
	_seatList44t }
.44} ~
Count	44~ �
,
44� �
availableSeats
44� �
.
44� �
Count
44� �
(
44� �
)
44� �
,
44� �
availableSeats
44� �
,
44� �
cheapestSeat
44� �
)
44� �
)
44� �
;
44� �
}55 
)55 
;55 
Receive66 
<66 
RequestChangeEvent66 &
>66& '
(66' (
async66( -
message66. 5
=>666 8
{669 :
this77 
.77 
Name77 
=77 
message77 #
.77# $
Name77$ (
;77( )
this88 
.88 
Duration88 
=88 
message88  '
.88' (
Duration88( 0
;880 1
this99 
.99 
Location99 
=99 
message99  '
.99' (
Location99( 0
;990 1
this:: 
.:: 
Date:: 
=:: 
message:: #
.::# $
Date::$ (
;::( )
var;; 
availableSeats;; "
=;;# $
	_seatList;;% .
.;;. /
Where;;/ 4
(;;4 5
seat;;5 9
=>;;: <
!;;= >$
seatIdToReservationActor;;> V
.;;V W
ContainsKey;;W b
(;;b c
seat;;c g
.;;g h
Id;;h j
);;j k
);;k l
.;;l m
ToList;;m s
(;;s t
);;t u
;;;u v
var<< 
cheapestSeat<<  
=<<! "
	_seatList<<# ,
.<<, -
Min<<- 0
(<<0 1
seat<<1 5
=><<6 8
seat<<9 =
.<<= >
Price<<> C
)<<C D
;<<D E$
reservationActorToSeatId== (
.==( )
Keys==) -
.==- .
ForEach==. 5
(==5 6
reservationActor==6 F
=>==G I
reservationActor==J Z
.==Z [
Tell==[ _
(==_ `
new==` c
EventChanged==d p
(==p q
message==q x
.==x y
	RequestId	==y �
)
==� �
)
==� �
)
==� �
;
==� �
Sender>> 
.>> 
Tell>> 
(>> 
new>> 
RespondEventData>>  0
(>>0 1
message>>1 8
.>>8 9
	RequestId>>9 B
,>>B C
Id>>D F
,>>F G
Name>>H L
,>>L M
Duration>>N V
,>>V W
Location>>X `
,>>` a
Date>>b f
,>>f g
Status>>h n
,>>n o
	_seatList>>p y
.>>y z
Count>>z 
,	>> �
availableSeats
>>� �
.
>>� �
Count
>>� �
(
>>� �
)
>>� �
,
>>� �
availableSeats
>>� �
,
>>� �
cheapestSeat
>>� �
)
>>� �
)
>>� �
;
>>� �
}?? 
)?? 
;?? 
Receive@@ 
<@@ 
RequestCancelEvent@@ &
>@@& '
(@@' (
async@@( -
message@@. 5
=>@@6 8
{@@9 :
varAA 
availableSeatsAA "
=AA# $
	_seatListAA% .
.AA. /
WhereAA/ 4
(AA4 5
seatAA5 9
=>AA: <
!AA= >$
seatIdToReservationActorAA> V
.AAV W
ContainsKeyAAW b
(AAb c
seatAAc g
.AAg h
IdAAh j
)AAj k
)AAk l
.AAl m
ToListAAm s
(AAs t
)AAt u
;AAu v
thisBB 
.BB 
StatusBB 
=BB  !
EventStatesBB" -
.BB- .
CANCELEDBB. 6
;BB6 7$
reservationActorToSeatIdCC ,
.CC, -
KeysCC- 1
.CC1 2
ForEachCC2 9
(CC9 :
reservationActorCC: J
=>CCK M
reservationActorCCN ^
.CC^ _
TellCC_ c
(CCc d
newCCd g
EventCancelledCCh v
(CCv w
messageCCw ~
.CC~ 
	RequestId	CC �
)
CC� �
)
CC� �
)
CC� �
;
CC� �$
seatIdToReservationActorDD ,
.DD, -
ClearDD- 2
(DD2 3
)DD3 4
;DD4 5$
reservationActorToSeatIdEE ,
.EE, -
ClearEE- 2
(EE2 3
)EE3 4
;EE4 5
SenderFF 
.FF 
TellFF 
(FF  
newFF  #!
RespondEventCancelledFF$ 9
(FF9 :
messageFF: A
.FFA B
	RequestIdFFB K
,FFK L
IdFFM O
)FFO P
)FFP Q
;FFQ R
}GG 
)GG 
;GG 
ReceiveHH 
<HH 
ReservationRequestHH &
>HH& '
(HH' (
asyncHH( -
messageHH. 5
=>HH6 8
{HH9 :
ifII 
(II $
seatIdToReservationActorII ,
.II, -
ContainsKeyII- 8
(II8 9
messageII9 @
.II@ A
SeatIdIIA G
)IIG H
)IIH I
{JJ 
SenderKK 
.KK 
TellKK 
(KK  
newKK  #"
ReservationDeclinationKK$ :
(KK: ;
messageKK; B
.KKB C
	RequestIdKKC L
)KKL M
)KKM N
;KKN O
}LL 
elseMM 
{NN $
seatIdToReservationActorOO ,
.OO, -
AddOO- 0
(OO0 1
messageOO1 8
.OO8 9
SeatIdOO9 ?
,OO? @
messageOOA H
.OOH I
ReservationActorRefOOI \
)OO\ ]
;OO] ^$
reservationActorToSeatIdPP ,
.PP, -
AddPP- 0
(PP0 1
messagePP1 8
.PP8 9
ReservationActorRefPP9 L
,PPL M
messagePPN U
.PPU V
SeatIdPPV \
)PP\ ]
;PP] ^
ContextQQ 
.QQ 
WatchQQ !
(QQ! "
messageQQ" )
.QQ) *
ReservationActorRefQQ* =
)QQ= >
;QQ> ?
SenderRR 
.RR 
TellRR 
(RR  
newRR  ##
ReservationConfirmationRR$ ;
(RR; <
messageRR< C
.RRC D
	RequestIdRRD M
,RRM N
messageRRO V
.RRV W
SeatIdRRW ]
)RR] ^
)RR^ _
;RR_ `
}SS 
}TT 
)TT 
;TT 
ReceiveUU 
<UU  
ReservationCancelledUU (
>UU( )
(UU) *
asyncUU* /
messageUU0 7
=>UU8 :
{UU; <
ifVV 
(VV $
reservationActorToSeatIdVV +
.VV+ ,
ContainsKeyVV, 7
(VV7 8
SenderVV8 >
)VV> ?
)VV? @
{WW 
varXX 
seatIdXX 
=XX  $
reservationActorToSeatIdXX! 9
[XX9 :
SenderXX: @
]XX@ A
;XXA B$
seatIdToReservationActorYY ,
.YY, -
RemoveYY- 3
(YY3 4
seatIdYY4 :
)YY: ;
;YY; <$
reservationActorToSeatIdZZ ,
.ZZ, -
RemoveZZ- 3
(ZZ3 4
SenderZZ4 :
)ZZ: ;
;ZZ; <
}[[ 
}\\ 
)\\ 
;\\ 
}]] 	
	protected__ 
ILoggingAdapter__ !
Log__" %
{__& '
get__( +
;__+ ,
}__- .
=__/ 0
Context__1 8
.__8 9
	GetLogger__9 B
(__B C
)__C D
;__D E
	protectedaa 
overrideaa 
voidaa 
PreStartaa  (
(aa( )
)aa) *
{bb 	
Logcc 
.cc 
Infocc 
(cc 
$"cc 
$strcc #
{cc# $
Idcc$ &
}cc& '
$strcc' (
{cc( )
Namecc) -
}cc- .
$strcc. /
{cc/ 0
Locationcc0 8
}cc8 9
$strcc9 :
{cc: ;
Datecc; ?
}cc? @
$strcc@ H
"ccH I
)ccI J
;ccJ K
}dd 	
	protectedff 
overrideff 
voidff 
PostStopff  (
(ff( )
)ff) *
{gg 	
Loghh 
.hh 
Infohh 
(hh 
$"hh 
$strhh #
{hh# $
Idhh$ &
}hh& '
$strhh' (
{hh( )
Namehh) -
}hh- .
$strhh. /
{hh/ 0
Locationhh0 8
}hh8 9
$strhh9 :
{hh: ;
Datehh; ?
}hh? @
$strhh@ H
"hhH I
)hhI J
;hhJ K
}ii 	
publickk 
statickk 
Propskk 
Propskk !
(kk! "
stringkk" (
idkk) +
,kk+ ,
stringkk- 3
namekk4 8
,kk8 9
doublekk: @
durationkkA I
,kkI J
stringkkK Q
locationkkR Z
,kkZ [
DateTimekk\ d
datekke i
,kki j
Listkkk o
<kko p
CreateSeatDatakkp ~
>kk~ 
seats
kk� �
)
kk� �
=>
kk� �
Akka
kk� �
.
kk� �
Actor
kk� �
.
kk� �
Props
kk� �
.
kk� �
Create
kk� �
(
kk� �
(
kk� �
)
kk� �
=>
kk� �
new
kk� �
Event
kk� �
(
kk� �
id
kk� �
,
kk� �
name
kk� �
,
kk� �
duration
kk� �
,
kk� �
location
kk� �
,
kk� �
date
kk� �
,
kk� �
seats
kk� �
)
kk� �
)
kk� �
;
kk� �
}ll 
}mm 