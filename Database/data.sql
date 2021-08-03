USE [ES]
GO
SET IDENTITY_INSERT [dbo].[Questions] ON 

INSERT [dbo].[Questions] ([Id], [Question], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (1, N'What does HTML stand for?', CAST(N'2021-08-03T20:03:41.4681218' AS DateTime2), NULL, NULL)
INSERT [dbo].[Questions] ([Id], [Question], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (2, N'What does CSS stand for?', CAST(N'2021-08-03T20:03:57.5854832' AS DateTime2), NULL, NULL)
INSERT [dbo].[Questions] ([Id], [Question], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (3, N'Which HTML tag is used to define an internal style sheet?', CAST(N'2021-08-03T20:05:07.1518798' AS DateTime2), NULL, NULL)
INSERT [dbo].[Questions] ([Id], [Question], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (4, N'Which is the correct CSS syntax?', CAST(N'2021-08-03T20:05:20.4202354' AS DateTime2), NULL, NULL)
INSERT [dbo].[Questions] ([Id], [Question], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (5, N'How do you insert a comment in a CSS file?', CAST(N'2021-08-03T20:05:30.5348347' AS DateTime2), NULL, NULL)
INSERT [dbo].[Questions] ([Id], [Question], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (6, N'How do you insert a comment in a HTML file?', CAST(N'2021-08-03T20:05:37.1459882' AS DateTime2), NULL, NULL)
INSERT [dbo].[Questions] ([Id], [Question], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (7, N'Which property is used to change the background color?', CAST(N'2021-08-03T20:05:47.7489267' AS DateTime2), NULL, NULL)
INSERT [dbo].[Questions] ([Id], [Question], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (8, N'How to write an IF statement in JavaScript?', CAST(N'2021-08-03T20:05:55.9662148' AS DateTime2), NULL, NULL)
INSERT [dbo].[Questions] ([Id], [Question], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (9, N'Inside which HTML element do we put the JavaScript?', CAST(N'2021-08-03T20:06:06.9478064' AS DateTime2), NULL, NULL)
INSERT [dbo].[Questions] ([Id], [Question], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (10, N'How does a WHILE loop start?', CAST(N'2021-08-03T20:06:13.3718790' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Questions] OFF
GO
SET IDENTITY_INSERT [dbo].[Answers] ON 

INSERT [dbo].[Answers] ([Id], [Answer], [isCorrect], [QuestionId], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (1, N'Hyperlinks and Text Markup Language', 2, 1, CAST(N'2021-08-03T20:13:49.1453129' AS DateTime2), NULL, NULL)
INSERT [dbo].[Answers] ([Id], [Answer], [isCorrect], [QuestionId], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (2, N'Hyper Text Markup Language', 1, 1, CAST(N'2021-08-03T20:14:02.9284679' AS DateTime2), NULL, NULL)
INSERT [dbo].[Answers] ([Id], [Answer], [isCorrect], [QuestionId], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (3, N'Hyper Text Making Language', 2, 1, CAST(N'2021-08-03T20:14:17.5541657' AS DateTime2), NULL, NULL)
INSERT [dbo].[Answers] ([Id], [Answer], [isCorrect], [QuestionId], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (4, N'Hyper Text Mark Language', 2, 1, CAST(N'2021-08-03T20:14:27.0392322' AS DateTime2), NULL, NULL)
INSERT [dbo].[Answers] ([Id], [Answer], [isCorrect], [QuestionId], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (9, N'Colorful StyleSheet', 2, 2, CAST(N'2021-08-03T20:17:55.4199688' AS DateTime2), NULL, NULL)
INSERT [dbo].[Answers] ([Id], [Answer], [isCorrect], [QuestionId], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (10, N'Creative Style Sheet', 2, 2, CAST(N'2021-08-03T20:18:30.7102601' AS DateTime2), NULL, NULL)
INSERT [dbo].[Answers] ([Id], [Answer], [isCorrect], [QuestionId], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (11, N'Cascading Style Sheet', 1, 2, CAST(N'2021-08-03T20:18:40.8489895' AS DateTime2), NULL, NULL)
INSERT [dbo].[Answers] ([Id], [Answer], [isCorrect], [QuestionId], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (12, N'Computer Style Sheett', 2, 2, CAST(N'2021-08-03T20:18:48.5381985' AS DateTime2), NULL, NULL)
INSERT [dbo].[Answers] ([Id], [Answer], [isCorrect], [QuestionId], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (13, N'<script>', 2, 3, CAST(N'2021-08-03T20:19:30.3078014' AS DateTime2), NULL, NULL)
INSERT [dbo].[Answers] ([Id], [Answer], [isCorrect], [QuestionId], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (14, N'<style>', 1, 3, CAST(N'2021-08-03T20:19:42.1012313' AS DateTime2), NULL, NULL)
INSERT [dbo].[Answers] ([Id], [Answer], [isCorrect], [QuestionId], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (15, N'<html>', 2, 3, CAST(N'2021-08-03T20:19:50.8729686' AS DateTime2), NULL, NULL)
INSERT [dbo].[Answers] ([Id], [Answer], [isCorrect], [QuestionId], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (16, N'<svg>', 2, 3, CAST(N'2021-08-03T20:20:01.8854915' AS DateTime2), NULL, NULL)
INSERT [dbo].[Answers] ([Id], [Answer], [isCorrect], [QuestionId], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (17, N'body{color:black}', 1, 4, CAST(N'2021-08-03T20:20:16.8236333' AS DateTime2), NULL, NULL)
INSERT [dbo].[Answers] ([Id], [Answer], [isCorrect], [QuestionId], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (18, N'{body{color:black}', 2, 4, CAST(N'2021-08-03T20:20:23.4927617' AS DateTime2), NULL, NULL)
INSERT [dbo].[Answers] ([Id], [Answer], [isCorrect], [QuestionId], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (19, N'body={color:black}', 2, 4, CAST(N'2021-08-03T20:20:32.6419330' AS DateTime2), NULL, NULL)
INSERT [dbo].[Answers] ([Id], [Answer], [isCorrect], [QuestionId], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (20, N'body:color{black}', 2, 4, CAST(N'2021-08-03T20:20:38.7957093' AS DateTime2), NULL, NULL)
INSERT [dbo].[Answers] ([Id], [Answer], [isCorrect], [QuestionId], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (21, N'/*This is Comment*/', 2, 5, CAST(N'2021-08-03T20:20:49.6869977' AS DateTime2), NULL, NULL)
INSERT [dbo].[Answers] ([Id], [Answer], [isCorrect], [QuestionId], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (22, N'//This Is Comment', 1, 5, CAST(N'2021-08-03T20:20:59.9327863' AS DateTime2), NULL, NULL)
INSERT [dbo].[Answers] ([Id], [Answer], [isCorrect], [QuestionId], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (23, N'<!--- This Is Comment --->', 2, 5, CAST(N'2021-08-03T20:21:08.6415341' AS DateTime2), NULL, NULL)
INSERT [dbo].[Answers] ([Id], [Answer], [isCorrect], [QuestionId], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (24, N'//This Is Comment//', 2, 5, CAST(N'2021-08-03T20:21:14.3692484' AS DateTime2), NULL, NULL)
INSERT [dbo].[Answers] ([Id], [Answer], [isCorrect], [QuestionId], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (25, N'/*This is Comment*/', 2, 6, CAST(N'2021-08-03T20:21:25.0970581' AS DateTime2), NULL, NULL)
INSERT [dbo].[Answers] ([Id], [Answer], [isCorrect], [QuestionId], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (26, N'//This Is Comment', 2, 6, CAST(N'2021-08-03T20:21:30.8197548' AS DateTime2), NULL, NULL)
INSERT [dbo].[Answers] ([Id], [Answer], [isCorrect], [QuestionId], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (27, N'<!--- This Is Comment --->', 1, 6, CAST(N'2021-08-03T20:21:57.7700021' AS DateTime2), NULL, NULL)
INSERT [dbo].[Answers] ([Id], [Answer], [isCorrect], [QuestionId], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (28, N'//This Is Comment//', 2, 6, CAST(N'2021-08-03T20:22:04.4774546' AS DateTime2), NULL, NULL)
INSERT [dbo].[Answers] ([Id], [Answer], [isCorrect], [QuestionId], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (29, N'backgroundColor', 2, 7, CAST(N'2021-08-03T20:23:50.6736057' AS DateTime2), NULL, NULL)
INSERT [dbo].[Answers] ([Id], [Answer], [isCorrect], [QuestionId], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (30, N'BgColor', 2, 7, CAST(N'2021-08-03T20:25:11.3687371' AS DateTime2), NULL, NULL)
INSERT [dbo].[Answers] ([Id], [Answer], [isCorrect], [QuestionId], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (31, N'Color-Background', 2, 7, CAST(N'2021-08-03T20:25:16.1302302' AS DateTime2), NULL, NULL)
INSERT [dbo].[Answers] ([Id], [Answer], [isCorrect], [QuestionId], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (32, N'background', 1, 7, CAST(N'2021-08-03T20:25:24.7500324' AS DateTime2), NULL, NULL)
INSERT [dbo].[Answers] ([Id], [Answer], [isCorrect], [QuestionId], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (33, N'if i==5', 2, 8, CAST(N'2021-08-03T20:25:51.4579888' AS DateTime2), NULL, NULL)
INSERT [dbo].[Answers] ([Id], [Answer], [isCorrect], [QuestionId], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (34, N'if(i==5)', 2, 8, CAST(N'2021-08-03T20:25:58.5309019' AS DateTime2), NULL, NULL)
INSERT [dbo].[Answers] ([Id], [Answer], [isCorrect], [QuestionId], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (35, N'if(i==5)then)', 1, 8, CAST(N'2021-08-03T20:26:06.3381164' AS DateTime2), NULL, NULL)
INSERT [dbo].[Answers] ([Id], [Answer], [isCorrect], [QuestionId], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (36, N'if i==5 then', 2, 8, CAST(N'2021-08-03T20:26:14.8728920' AS DateTime2), NULL, NULL)
INSERT [dbo].[Answers] ([Id], [Answer], [isCorrect], [QuestionId], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (37, N'<js></js>', 2, 9, CAST(N'2021-08-03T20:26:25.1973631' AS DateTime2), NULL, NULL)
INSERT [dbo].[Answers] ([Id], [Answer], [isCorrect], [QuestionId], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (38, N'<javascript></javascript>>', 2, 9, CAST(N'2021-08-03T20:26:30.8509866' AS DateTime2), NULL, NULL)
INSERT [dbo].[Answers] ([Id], [Answer], [isCorrect], [QuestionId], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (39, N'<script></script>', 1, 9, CAST(N'2021-08-03T20:26:43.9059149' AS DateTime2), NULL, NULL)
INSERT [dbo].[Answers] ([Id], [Answer], [isCorrect], [QuestionId], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (40, N'<scripting>', 2, 9, CAST(N'2021-08-03T20:26:52.5503969' AS DateTime2), NULL, NULL)
INSERT [dbo].[Answers] ([Id], [Answer], [isCorrect], [QuestionId], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (41, N'while(i <= 0)', 1, 9, CAST(N'2021-08-03T20:27:00.6965872' AS DateTime2), NULL, NULL)
INSERT [dbo].[Answers] ([Id], [Answer], [isCorrect], [QuestionId], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (42, N'while(i <= 0 i++)', 2, 9, CAST(N'2021-08-03T20:27:12.8376817' AS DateTime2), NULL, NULL)
INSERT [dbo].[Answers] ([Id], [Answer], [isCorrect], [QuestionId], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (43, N'while i <= 0', 2, 9, CAST(N'2021-08-03T20:27:21.0644116' AS DateTime2), NULL, NULL)
INSERT [dbo].[Answers] ([Id], [Answer], [isCorrect], [QuestionId], [CreatedDate], [ModifiedDate], [DeletedDate]) VALUES (44, N'while (i++ i <= 0)', 2, 9, CAST(N'2021-08-03T20:27:28.6846494' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Answers] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Username], [Password], [NumberId], [Role], [LastName], [FirstName], [Email], [Tel], [Address], [Gender], [Status], [CreatedDate], [ModifiedDate], [DeletedDate], [Image]) VALUES (1, N'duonghoang', N'$2a$11$JH3aLwiGEGy.ZTk9R9xVkO5iJkMDvti95BI4GA1VBweDfeBPhFw6K', N'0123456789', N'STUDENT', N'hoang', N'duong', N'manchestervn1996@gmail.com', N'0962257510', N'ha noi', 0, 1, CAST(N'2021-07-30T03:06:42.9978258' AS DateTime2), NULL, NULL, N'Image_705.jpg')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
