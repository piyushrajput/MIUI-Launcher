.class Lcom/android/launcher2/AllAppsList;
.super Ljava/lang/Object;
.source "AllAppsList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/AllAppsList$PositionQuery;,
        Lcom/android/launcher2/AllAppsList$RemoveInfo;
    }
.end annotation


# static fields
.field private static sSelectionArgs2:[Ljava/lang/String;


# instance fields
.field public added:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field public removed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AllAppsList$RemoveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/launcher2/AllAppsList;->sSelectionArgs2:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    .line 89
    return-void
.end method

.method private addApp(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 3
    .parameter "context"
    .parameter "info"

    .prologue
    .line 83
    new-instance v0, Lcom/android/launcher2/ShortcutInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher2/ShortcutInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 84
    .local v0, ai:Lcom/android/launcher2/ShortcutInfo;
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v0}, Lcom/android/launcher2/AllAppsList;->loadPosition(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher2/ShortcutInfo;)V

    .line 85
    invoke-virtual {p0, v0}, Lcom/android/launcher2/AllAppsList;->add(Lcom/android/launcher2/ShortcutInfo;)V

    .line 86
    iget-object v1, v0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/launcher2/AllAppsList;->loadShortcuts(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method private loadPosition(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher2/ShortcutInfo;)V
    .locals 9
    .parameter "context"
    .parameter "packageName"
    .parameter "info"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 114
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/launcher2/AllAppsList;->sSelectionArgs2:[Ljava/lang/String;

    iget-object v2, p3, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 115
    sget-object v1, Lcom/android/launcher2/AllAppsList;->sSelectionArgs2:[Ljava/lang/String;

    aput-object p2, v1, v4

    .line 116
    sget-object v1, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/launcher2/AllAppsList$PositionQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "intent=? AND iconPackage=? AND itemType=0"

    sget-object v4, Lcom/android/launcher2/AllAppsList;->sSelectionArgs2:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 119
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    const/4 v1, 0x4

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p3, Lcom/android/launcher2/ShortcutInfo;->id:J

    .line 121
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p3, Lcom/android/launcher2/ShortcutInfo;->screenId:J

    .line 122
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p3, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    .line 123
    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p3, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    .line 124
    const/4 v1, 0x1

    iput v1, p3, Lcom/android/launcher2/ShortcutInfo;->spanY:I

    iput v1, p3, Lcom/android/launcher2/ShortcutInfo;->spanX:I

    .line 125
    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p3, Lcom/android/launcher2/ShortcutInfo;->container:J

    .line 126
    const-string v1, "AllAppsList"

    const-string v2, "Loaded application %s at (%d, %d) of screen %d under container %d"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p3, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p3, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p3, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-wide v7, p3, Lcom/android/launcher2/ShortcutInfo;->screenId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-wide v7, p3, Lcom/android/launcher2/ShortcutInfo;->container:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :goto_0
    if-eqz v6, :cond_0

    .line 135
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 138
    :cond_0
    return-void

    .line 130
    :cond_1
    const-wide/16 v1, -0x1

    :try_start_1
    iput-wide v1, p3, Lcom/android/launcher2/ShortcutInfo;->screenId:J

    .line 131
    const-string v1, "AllAppsList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t load postion for app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p3, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 135
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method private loadShortcuts(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 12
    .parameter "context"
    .parameter "intent"
    .parameter "packageName"

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x0

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 142
    .local v1, cr:Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/launcher2/ItemQuery;->COLUMNS:[Ljava/lang/String;

    const-string v4, "intent=? AND iconPackage=? AND itemType=1"

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {p2, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p3, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 149
    .local v4, cursor:Landroid/database/Cursor;
    if-eqz v4, :cond_0

    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v2

    const/4 v6, 0x3

    const/4 v7, 0x5

    const/4 v8, 0x6

    const/4 v9, 0x4

    const/4 v10, 0x2

    move-object v3, p2

    move-object v5, p1

    invoke-virtual/range {v2 .. v10}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/content/Intent;Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v11

    .line 153
    .local v11, si:Lcom/android/launcher2/ShortcutInfo;
    invoke-virtual {v11, v4}, Lcom/android/launcher2/ShortcutInfo;->load(Landroid/database/Cursor;)V

    .line 154
    iput-object p2, v11, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 155
    invoke-virtual {p0, v11}, Lcom/android/launcher2/AllAppsList;->add(Lcom/android/launcher2/ShortcutInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    .end local v11           #si:Lcom/android/launcher2/ShortcutInfo;
    :cond_0
    if-eqz v4, :cond_1

    .line 159
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 162
    :cond_1
    return-void

    .line 158
    :catchall_0
    move-exception v2

    if-eqz v4, :cond_2

    .line 159
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method


# virtual methods
.method public add(Lcom/android/launcher2/ShortcutInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public addPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 73
    invoke-static {p1, p2}, Lcom/android/launcher2/ScreenUtils;->findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 75
    .local v2, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 76
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 77
    .local v1, info:Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, p1, v1}, Lcom/android/launcher2/AllAppsList;->addApp(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    goto :goto_0

    .line 80
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 66
    iget-object v0, p0, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 67
    return-void
.end method

.method public removePackage(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/AllAppsList;->removePackage(Ljava/lang/String;Z)V

    .line 169
    return-void
.end method

.method public removePackage(Ljava/lang/String;Z)V
    .locals 2
    .parameter "packageName"
    .parameter "isReplacing"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher2/AllAppsList$RemoveInfo;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher2/AllAppsList$RemoveInfo;-><init>(Lcom/android/launcher2/AllAppsList;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    return-void
.end method

.method public updatePackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher2/AllAppsList$RemoveInfo;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p2, v2}, Lcom/android/launcher2/AllAppsList$RemoveInfo;-><init>(Lcom/android/launcher2/AllAppsList;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/AllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 181
    return-void
.end method
