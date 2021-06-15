as yet unclassified
createTables
	db basicExecute: 'create table book (
	title varchar(50), 
	author varchar (50),
	genres text, 
	description text);'.