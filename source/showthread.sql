select

  P.id,
  P.threadID,
  strftime('%d.%m.%Y %H:%M:%S', P.postTime, 'unixepoch') as PostTime,
  strftime('%d.%m.%Y %H:%M:%S', P.editTime, 'unixepoch') as EditTime,
  P.Rendered,
  P.userID,
  P.editUserID,
  (select nick from users u2 where u2.id = P.editUserID) as EditUser,
  U.nick as UserName,
  U.PostCount as UserPostCount,
  U.av_time as AVer,
  ?4 as Slug,
  exists (select 1 from UnreadPosts UP where UP.UserID = ?5 and UP.PostID = P.id) as Unread,
  exists (select 1 from PostsHistory PH where PH.postID = P.id) as HistoryFlag,
  PC.count as ReadCount

from
  Posts P
left join
  PostCNT PC on PC.postid = P.id
left join
  Users U on U.id = P.userID
where
  P.threadID = ?1 and
  P.id >= (select id from posts where threadid = ?1 order by id limit 1 offset ?3)
order by P.id
limit ?2;
