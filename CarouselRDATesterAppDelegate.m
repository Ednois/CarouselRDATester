//
//  CarouselRDATesterAppDelegate.m
//  CarouselRDATester
//
//  Created by Scott Jann on 8/13/10.
//  Copyright 2010 Scott Jann. All rights reserved.
//

#import "CarouselRDATesterAppDelegate.h"
#import "Socket.h"

@implementation CarouselRDATesterAppDelegate

@synthesize window, serverField, portField, commandField, resultField, exampleList;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
}

- (IBAction)fillExample:(NSComboBox*)sender {
	switch([sender indexOfSelectedItem]) {
		case 0:
			[commandField setString:@"<?xml version=\"1.0\" encoding=\"utf-8\" ?>\n<CarouselCommand xmlns=\"http://www.trms.com/CarouselRemoteCommand\">\n	<CreatePage>\n		<UserName>xml</UserName>\n		<Password>trms</Password>\n		<Zone>1</Zone>\n		<AlwaysOn>false</AlwaysOn>\n		<DateTimeOn>2005-10-29T00:00:00</DateTimeOn>\n		<DateTimeOff>2005-12-29T23:59:59</DateTimeOff>\n		<CycleTimeOn>08:00:00</CycleTimeOn>\n		<CycleTimeOff>17:00:00</CycleTimeOff>\n		<DisplayDuration>5</DisplayDuration>\n		<Weekdays>127</Weekdays>\n		<WebEnabled>true</WebEnabled>\n		<Description>This is a sample page that we created via the remote command system.</Description>\n		<PageType>Standard</PageType>\n		<PageTemplate>\n			<TemplateName>a title and body</TemplateName>\n			<Block Name=\"Title\" Value=\"Hello\" />\n			<Block Name=\"bOdY\" Value=\"World!\" />\n			<Block Name=\"test\" Value=\"World!\" />\n		</PageTemplate>\n	</CreatePage>\n</CarouselCommand>"];
			break;
		case 1:
			[commandField setString:@"<?xml version=\"1.0\" encoding=\"utf-8\" ?>\n<CarouselCommand xmlns=\"http://www.trms.com/CarouselRemoteCommand\">\n	<CreatePage>\n		<UserName>xml</UserName>\n		<Password>trms</Password>\n		<Zone>1</Zone>\n		<AlwaysOn>false</AlwaysOn>\n		<DateTimeOn>2005-10-29T00:00:00</DateTimeOn>\n		<DateTimeOff>2005-12-29T23:59:59</DateTimeOff>\n		<CycleTimeOn>08:00:00</CycleTimeOn>\n		<CycleTimeOff>17:00:00</CycleTimeOff>\n		<DisplayDuration>5</DisplayDuration>\n		<Weekdays>127</Weekdays>\n		<WebEnabled>true</WebEnabled>\n		<Description>This is a sample page that we created via the remote command system.</Description>\n		<PageType>Standard</PageType>\n		<PageTemplate>\n			<TemplateName>Picture Right</TemplateName>\n			<Block Name=\"Title\" Value=\"Sample\" />\n			<Block Name=\"Description\" Value=\"Carousel Page\" />\n		</PageTemplate>\n	</CreatePage>\n</CarouselCommand>"];
			break;
		case 2:
			[commandField setString:@"<?xml version=\"1.0\" encoding=\"utf-8\" ?>\n<CarouselCommand xmlns=\"http://www.trms.com/CarouselRemoteCommand\">\n	<CreatePage>\n		<UserName>xml</UserName>\n		<Password>trms</Password>\n		<Zone>1</Zone>\n		<AlwaysOn>false</AlwaysOn>\n		<DateTimeOn>2005-10-29T00:00:00</DateTimeOn>\n		<DateTimeOff>2005-12-29T23:59:59</DateTimeOff>\n		<CycleTimeOn>08:00:00</CycleTimeOn>\n		<CycleTimeOff>17:00:00</CycleTimeOff>\n		<DisplayDuration>5</DisplayDuration>\n		<Weekdays>127</Weekdays>\n		<WebEnabled>true</WebEnabled>\n		<Description>This is a sample page that we created via the remote command system.</Description>\n		<PageType>Standard</PageType>\n		<PageTemplate>\n			<TemplateName>blue lines</TemplateName>\n			<Block Name=\"Text\" Value=\"TRMS!\" />\n		</PageTemplate>\n	</CreatePage>\n</CarouselCommand>"];
			break;
		case 3:
			[commandField setString:@"<?xml version=\"1.0\" encoding=\"utf-8\" ?>\n<CarouselCommand xmlns=\"http://www.trms.com/CarouselRemoteCommand\">\n	<CreatePage>\n		<UserName>xml</UserName>\n		<Password>trms</Password>\n		<UpdateGUID>3dc0f1cd-eb4c-4bad-8733-15a5a13eea08</UpdateGUID>\n		<Zone>1</Zone>\n		<AlwaysOn>false</AlwaysOn>\n		<DateTimeOn>2005-09-29T00:00:00</DateTimeOn>\n		<DateTimeOff>2005-12-05T23:59:59</DateTimeOff>\n		<CycleTimeOn>09:00:00</CycleTimeOn>\n		<CycleTimeOff>18:00:00</CycleTimeOff>\n		<Weekdays>32</Weekdays>\n		<WebEnabled>true</WebEnabled>\n		<PageType>Standard</PageType>\n		<PageTemplate>\n			<TemplateName>two column</TemplateName>\n			<Block Name=\"left text area\" Value=\"Left!\" />\n			<Block Name=\"right text area\" Value=\"Right!\" />\n		</PageTemplate>\n	</CreatePage>\n</CarouselCommand>"];
			break;
		case 4:
			[commandField setString:@"<?xml version=\"1.0\" encoding=\"utf-8\" ?>\n<CarouselCommand xmlns=\"http://www.trms.com/CarouselRemoteCommand\">\n	<CreatePage>\n		<UserName>xml</UserName>\n		<Password>trms</Password>\n		<Zone>1</Zone>\n		<AlwaysOn>true</AlwaysOn>\n		<Weekdays>127</Weekdays>\n		<WebEnabled>true</WebEnabled>\n		<PageType>alert</PageType>\n		<PageTemplate>\n			<TemplateName>Simple Message</TemplateName>\n			<Block Name=\"Simple Message\" Value=\"ALERT PAGE\" />\n		</PageTemplate>\n	</CreatePage>\n</CarouselCommand>"];
			break;
		case 5:
			[commandField setString:@"<?xml version=\"1.0\" encoding=\"utf-8\" ?>\n<CarouselCommand xmlns=\"http://www.trms.com/CarouselRemoteCommand\">\n	<CreateCrawl>\n		<UserName>xml</UserName>\n		<Password>trms</Password>\n		<CrawlText>This is the text I'd like to see at the bottom of the screen.</CrawlText>\n		<Zone>all</Zone>\n		<AlwaysOn>false</AlwaysOn>\n		<DateTimeOn>2005-10-26T00:00:00</DateTimeOn>\n		<DateTimeOff>2005-12-29T23:59:59</DateTimeOff>\n		<CycleTimeOn>08:00:00</CycleTimeOn>\n		<CycleTimeOff>17:00:00</CycleTimeOff>\n		<Weekdays>127</Weekdays>\n		<WebEnabled>true</WebEnabled>\n	</CreateCrawl>\n</CarouselCommand>"];
			break;
		case 6:
			[commandField setString:@"<?xml version=\"1.0\" encoding=\"utf-8\" ?>\n<CarouselCommand xmlns=\"http://www.trms.com/CarouselRemoteCommand\">\n	<CreateCrawl>\n		<UserName>fakeName</UserName>\n		<Password>fakePassword</Password>\n		<CrawlText>This is the text I'd like to see at the bottom of the screen.</CrawlText>\n		<Zone>all</Zone>\n		<AlwaysOn>false</AlwaysOn>\n		<DateTimeOn>2005-10-26T00:00:00-06:00</DateTimeOn>\n		<DateTimeOff>2005-10-29T23:59:59-06:00</DateTimeOff>\n		<Weekdays>127</Weekdays>\n		<WebEnabled>true</WebEnabled>\n	</CreateCrawl>\n</CarouselCommand>"];
			break;
		case 7:
			[commandField setString:@"<?xml version=\"1.0\" encoding=\"utf-8\" ?>\n<CarouselCommand xmlns=\"http://www.trms.com/CarouselRemoteCommand\">\n	<CreateCrawl>\n		<UserName>xml</UserName>\n		<Password>trms</Password>\n		<CrawlText>Always on, MWF</CrawlText>\n		<Zone>1</Zone>\n		<AlwaysOn>true</AlwaysOn>\n		<Weekdays>42</Weekdays>\n		<WebEnabled>true</WebEnabled>\n	</CreateCrawl>\n</CarouselCommand>"];
			break;
		case 8:
			[commandField setString:@"<?xml version=\"1.0\" encoding=\"utf-8\" ?>\n<CarouselCommand xmlns=\"http://www.trms.com/CarouselRemoteCommand\">\n	<CreateCrawl>\n		<UserName>xml</UserName>\n		<Password>trms</Password>\n		<CrawlText>This is the text I'd like to see at the bottom of the screen.</CrawlText>\n		<Zone>9999</Zone>\n		<AlwaysOn>false</AlwaysOn>\n		<DateTimeOn>2005-10-26T00:00:00-06:00</DateTimeOn>\n		<DateTimeOff>2005-10-29T23:59:59-06:00</DateTimeOff>\n		<Weekdays>127</Weekdays>\n		<WebEnabled>true</WebEnabled>\n	</CreateCrawl>\n</CarouselCommand>"];
			break;
		case 9:
			[commandField setString:@"<?xml version=\"1.0\" encoding=\"utf-8\" ?>\n<CarouselCommand xmlns=\"http://www.trms.com/CarouselRemoteCommand\">\n	<!-- This command will set the status of the specified page to on. -->\n	<ChangePageStatus>\n		<UserName>xml</UserName>\n		<Password>trms</Password>\n		<GUID>77c0592c-e13e-46de-b2dc-5617e119452a</GUID>\n		<Status>on</Status>\n	</ChangePageStatus>\n</CarouselCommand>"];
			break;
		case 10:
			[commandField setString:@"<?xml version=\"1.0\" encoding=\"utf-8\" ?>\n<CarouselCommand xmlns=\"http://www.trms.com/CarouselRemoteCommand\">\n	<!-- This command will delete the specified page, assuming that the user John has permission to do so. -->\n	<DeletePage>\n		<UserName>xml</UserName>\n		<Password>trms</Password>\n		<GUID>4f83e8f2-2b17-41de-8e7b-5e799280d388</GUID>\n	</DeletePage>\n</CarouselCommand>"];
			break;
		case 11:
			[commandField setString:@"<?xml version=\"1.0\" encoding=\"utf-8\" ?>\n<CarouselCommand xmlns=\"http://www.trms.com/CarouselRemoteCommand\">\n	<!-- Sending this command will permanently delete ALL pages created by John -->\n	<DeleteAllUserPages>\n		<UserName>xml</UserName>\n		<Password>trms</Password>\n	</DeleteAllUserPages>\n</CarouselCommand>"];
			break;
		case 12:
			[commandField setString:@"<?xml version=\"1.0\" encoding=\"utf-8\" ?>\n<CarouselCommand xmlns=\"http://www.trms.com/CarouselRemoteCommand\">\n	<!-- Sending this command will turn off all alert pages. -->\n	<DeactivateAllAlertPages>\n		<UserName>xml</UserName>\n		<Password>trms</Password>\n		<Zone>all</Zone>\n	</DeactivateAllAlertPages>\n</CarouselCommand>"];
			break;
		case 13:
			[commandField setString:@"<?xml version=\"1.0\" encoding=\"utf-8\" ?>\n<CarouselCommand xmlns=\"http://www.trms.com/CarouselRemoteCommand\">\n	<!-- Sending this command will turn off all alert pages. -->\n	<GetPlayerStatus>\n		<UserName>xml</UserName>\n		<Password>trms</Password>\n	</GetPlayerStatus>\n</CarouselCommand>"];
			break;
		case 14:
			[commandField setString:@"<?xml version=\"1.0\" encoding=\"utf-8\" ?>\n<CarouselCommand xmlns=\"http://www.trms.com/CarouselRemoteCommand\">\n	<CreatePage>\n		<!-- no username/password -->\n		<Zone>1</Zone>\n		<AlwaysOn>false</AlwaysOn>\n		<DateTimeOn>2005-10-29T00:00:00-06:00</DateTimeOn>\n		<DateTimeOff>2005-10-29T23:59:59-06:00</DateTimeOff>\n		<CycleTimeOn>08:00:00-06:00</CycleTimeOn>\n		<CycleTimeOff>17:00:00-06:00</CycleTimeOff>\n		<Weekdays>127</Weekdays>\n		<WebEnabled>true</WebEnabled>\n		<PageType>Standard</PageType>\n		<PageTemplate>\n			<TemplateName>Title Body</TemplateName>\n			<Block Name=\"Title\" Value=\"Hello\" />\n			<Block Name=\"Body\" Value=\"World!\" />\n		</PageTemplate>\n	</CreatePage>\n</CarouselCommand>"];
			break;
		case 15:
			[commandField setString:@"<?xml version=\"1.0\" encoding=\"utf-8\" ?>\n<CarouselCommand xmlns=\"http://www.trms.com/CarouselRemoteCommand\">\n	<CreatePage>\n		<UserName>xml</UserName>\n		<Password>trms</Password>\n		<Zone>1</Zone>\n		<AlwaysOn>hello</AlwaysOn> <!-- error here -->\n		<DateTimeOn>2005-10-29T00:00:00-06:00</DateTimeOn>\n		<DateTimeOff>2005-10-29T23:59:59-06:00</DateTimeOff>\n		<CycleTimeOn>08:00:00-06:00</CycleTimeOn>\n		<CycleTimeOff>17:00:00-06:00</CycleTimeOff>\n		<Weekdays>127</Weekdays>\n		<WebEnabled>true</WebEnabled>\n		<PageType>Standard</PageType>\n		<PageTemplate>\n			<TemplateName>Title Body</TemplateName>\n			<Block Name=\"Title\" Value=\"Hello\" />\n			<Block Name=\"Body\" Value=\"World!\" />\n		</PageTemplate>\n	</CreatePage>\n</CarouselCommand>"];
			break;
		case 16:
			[commandField setString:@"<?xml version=\"1.0\" encoding=\"utf-8\" ?>\n<CarouselCommand xmlns=\"http://www.trms.com/CarouselRemoteCommand\">\n</CarouselCommand>"];
			break;
		case 17:
			[commandField setString:@"<?xml version=\"1.0\" encoding=\"utf-8\" ?>\n<CarouselCommand xmlns=\"http://www.trms.com/CarouselRemoteCommand\">\n	<SomeStrangeCommand>\n		<Entity attribute1=\"1\" />\n	</SomeStrangeCommand>\n</CarouselCommand>"];
			break;
		case 18:
			[commandField setString:@"<?xml version=\"1.0\" encoding=\"utf-8\" ?>\n<CarouselCommand xmlns=\"http://www.trms.com/CarouselRemoteCommand\">\n	<GetZoneList>\n		<UserName>xml</UserName>\n		<Password>trms</Password>\n	</GetZoneList>\n</CarouselCommand>"];
			break;
		case 19:
			[commandField setString:@"<?xml version=\"1.0\" encoding=\"utf-8\" ?>\n<CarouselCommand xmlns=\"http://www.trms.com/CarouselRemoteCommand\">\n	<GetTemplateList>\n		<UserName>xml</UserName>\n		<Password>trms</Password>\n		<ZoneID>1</ZoneID>\n	</GetTemplateList>\n</CarouselCommand>"];
			break;
		case 20:
			[commandField setString:@"<?xml version=\"1.0\" encoding=\"utf-8\" ?>\n<CarouselCommand xmlns=\"http://www.trms.com/CarouselRemoteCommand\">\n	<GetBulletinList>\n		<UserName>xml</UserName>\n		<Password>trms</Password>\n		<ZoneID>1</ZoneID>\n	</GetBulletinList>\n</CarouselCommand>"];
			break;
	}
}

- (IBAction)sendCommand:(id)sender {
	NSRange range = [[[commandField textStorage] string] rangeOfString:@"</CarouselCommand>"];
	if(range.location == NSNotFound) {
		NSAlert *alert = [NSAlert alertWithMessageText:@"Invalid command." defaultButton:@"OK" alternateButton:nil otherButton:nil informativeTextWithFormat:@""];
		[alert runModal];
		return;
	}
	
	Socket *s = [[Socket alloc] init];
	int port = [portField intValue];
	if(port == 0) // use default port
		port = 56906;
	//NSLog(@"server: %@", [serverField stringValue]);
	//NSLog(@"port: %d", port);
	//NSLog(@"command: %@", [[commandField textStorage] string]);
	[s connectToHostName:[serverField stringValue] port:port];
	[s writeString:[[commandField textStorage] string]];
	//NSLog(@"connected");
	
	// read response
	NSMutableData *buffer = [NSMutableData dataWithLength:0];
	NSMutableData *response = [NSMutableData dataWithLength:0];
	while([s readData:buffer]) {
		if([buffer length] == 0)
			break;
		[response appendData:buffer];
		
		// check if result is complete
		NSString *output = [[NSString alloc] initWithData:response encoding:NSUTF8StringEncoding];
		NSRange range = [output rangeOfString:@"</CarouselResponse>"];
		if(range.location == NSNotFound) {
			// don't have a complete response yet, read more
			[output release];
			[buffer setLength:0];
			continue;
		}
		
		//NSLog(@"result: %@", output);
		[resultField setString:output];
		[output release];
		break;
	}
	
	[s release];
}

@end
