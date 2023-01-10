# gui_backend_protocol

A set of communications protocol 
to communicate input/output between
the ACE engine and a gui inspired by
[UCI](https://en.wikipedia.org/wiki/Universal_Chess_Interface) protocol

this is done because: 

- to have a gui for game hacking 
  in a desktop computer for comfort while the engine runs
  on android / linux desktop 


- if in the future there are gui on mobile apps for  
  ACE engine, 

  integrating the engine with native apps directly
  is impossible since the engine requires root 
  and on android only cli program can have root 
  not applications

  so the frontend and the backend need to be separated
  where the frontend runs the engine with sudo as 
  command-line commands

  ref: 
    	- https://stackoverflow.com/questions/21596397/getting-root-permission-for-android-app
    	- https://stackoverflow.com/questions/4905743/android-how-to-gain-root-access-in-an-android-application
  

## Protocol 
- communcations done via standard input/output

- all input the engine receives ends with `\n`

- all output the gui receive ends with `\n`

- if cheater mode is entered succsessfully,
  the engine outputs CHEATER_MODE_ENTERED


### GUI to engine: 

- `gui_protocol`: engine is compatable with gui 
		  if the engine says `gui_protocol_ok` 
		  
		  
- `ps ls`: list all processes currently running 
	   sorted ascendingly based on their start
	   time

- `cheater <PID>`: attach the engine to a running process 
		   <PID>
- `attached`: `attached_ok` if it is attached
	      `attached_none` if nothing is attached

### engine to GUI: 
- each time a command is sent to engine
  engine will send outputs that begins with
  `TASK_BEGIN` and ended with `TASK_DONE` to indicate the requested 
  command is done

  there can be output between `TASK_BEGIN` and `TASK_END`  
  which contains information that can captued by GUI
  
- if there is no output between `TASK_BEGIN` and
  `TASK_END`, the task is considered a succsess

- task fails if the first line of output is only `FAIL`
  the next lines after `FAIL` will be considered the 
  failure message
  



