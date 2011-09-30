.class public Lcom/android/launcher2/LauncherProvider;
.super Landroid/content/ContentProvider;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/LauncherProvider$SqlArguments;,
        Lcom/android/launcher2/LauncherProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field static final CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;


# instance fields
.field private volatile mLock:Ljava/lang/Object;

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private mScreens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ScreenUtils$ScreenInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const-string v0, "content://com.android.launcher2.settings/appWidgetReset"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherProvider;->mLock:Ljava/lang/Object;

    .line 799
    return-void
.end method

.method private loadScreens(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 1
    .parameter "db"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ScreenUtils$ScreenInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider;->mScreens:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 222
    invoke-static {p1}, Lcom/android/launcher2/ScreenUtils;->loadScreens(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/LauncherProvider;->mScreens:Ljava/util/ArrayList;

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider;->mScreens:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 9
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 156
    iget-object v4, p0, Lcom/android/launcher2/LauncherProvider;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 157
    :try_start_0
    new-instance v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/android/launcher2/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 158
    .local v0, args:Lcom/android/launcher2/LauncherProvider$SqlArguments;
    iget-object v5, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 159
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 161
    :try_start_1
    array-length v3, p2

    .line 162
    .local v3, numValues:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 163
    iget-object v5, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v7, p2, v2

    invoke-virtual {v1, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    const/4 v5, 0x0

    .line 167
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v4, v5

    .line 170
    :goto_1
    return v4

    .line 162
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 165
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 167
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 170
    array-length v5, p2

    monitor-exit v4

    move v4, v5

    goto :goto_1

    .line 167
    .end local v2           #i:I
    .end local v3           #numValues:I
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 171
    .end local v0           #args:Lcom/android/launcher2/LauncherProvider$SqlArguments;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v5

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 176
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 177
    :try_start_0
    new-instance v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/launcher2/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 178
    .local v0, args:Lcom/android/launcher2/LauncherProvider$SqlArguments;
    iget-object v3, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 179
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    monitor-exit v2

    return v3

    .line 180
    .end local v0           #args:Lcom/android/launcher2/LauncherProvider$SqlArguments;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 98
    new-instance v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, v1, v1}, Lcom/android/launcher2/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 99
    .local v0, args:Lcom/android/launcher2/LauncherProvider$SqlArguments;
    iget-object v1, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.dir/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.item/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 10
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    const/4 v9, 0x0

    .line 124
    iget-object v6, p0, Lcom/android/launcher2/LauncherProvider;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 125
    :try_start_0
    new-instance v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/android/launcher2/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 126
    .local v0, args:Lcom/android/launcher2/LauncherProvider$SqlArguments;
    iget-object v7, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 127
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v7, "favorites"

    iget-object v8, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 128
    .local v2, isFavorites:Z
    if-eqz v2, :cond_1

    .line 129
    const-string v7, "screen"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 130
    .local v5, screenId:Ljava/lang/Integer;
    if-nez v5, :cond_0

    .line 131
    monitor-exit v6

    move-object v6, v9

    .line 150
    .end local v5           #screenId:Ljava/lang/Integer;
    :goto_0
    return-object v6

    .line 134
    .restart local v5       #screenId:Ljava/lang/Integer;
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {p0, v1}, Lcom/android/launcher2/LauncherProvider;->loadScreens(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v7, v1, v8, p2}, Lcom/android/launcher2/ScreenUtils;->fillEmptyCell(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;Landroid/content/ContentValues;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 137
    monitor-exit v6

    move-object v6, v9

    goto :goto_0

    .line 142
    .end local v5           #screenId:Ljava/lang/Integer;
    :cond_1
    iget-object v7, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 143
    .local v3, rowId:J
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-gtz v7, :cond_2

    .line 144
    monitor-exit v6

    move-object v6, v9

    goto :goto_0

    .line 146
    :cond_2
    if-eqz v2, :cond_3

    .line 147
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {p0, v1}, Lcom/android/launcher2/LauncherProvider;->loadScreens(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v7, v1, v8, v3, v4}, Lcom/android/launcher2/ScreenUtils;->ensureEnoughScreensForItem(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;J)V

    .line 149
    :cond_3
    invoke-static {p1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 150
    monitor-exit v6

    move-object v6, p1

    goto :goto_0

    .line 151
    .end local v0           #args:Lcom/android/launcher2/LauncherProvider$SqlArguments;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #isFavorites:Z
    .end local v3           #rowId:J
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 92
    new-instance v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 109
    iget-object v10, p0, Lcom/android/launcher2/LauncherProvider;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 110
    :try_start_0
    new-instance v8, Lcom/android/launcher2/LauncherProvider$SqlArguments;

    invoke-direct {v8, p1, p3, p4}, Lcom/android/launcher2/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 111
    .local v8, args:Lcom/android/launcher2/LauncherProvider$SqlArguments;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 112
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    iget-object v2, v8, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 114
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 115
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v8, Lcom/android/launcher2/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v4, v8, Lcom/android/launcher2/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 116
    .local v9, result:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v9, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 118
    monitor-exit v10

    return-object v9

    .line 119
    .end local v0           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #args:Lcom/android/launcher2/LauncherProvider$SqlArguments;
    .end local v9           #result:Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 185
    iget-object v6, p0, Lcom/android/launcher2/LauncherProvider;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 186
    :try_start_0
    new-instance v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/android/launcher2/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 187
    .local v0, args:Lcom/android/launcher2/LauncherProvider$SqlArguments;
    iget-object v7, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 190
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v7, "packages"

    iget-object v8, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {p0, v3}, Lcom/android/launcher2/LauncherProvider;->loadScreens(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v8

    const-string v9, "name"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {v7, v3, v8, p0}, Lcom/android/launcher2/ScreenUtils;->updateHomeScreen(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 192
    const/4 v7, 0x0

    monitor-exit v6

    move v6, v7

    .line 214
    .end local p1
    :goto_0
    return v6

    .line 195
    .restart local p0
    .restart local p1
    :cond_0
    const-string v7, "screens"

    iget-object v8, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 196
    const-string v7, "screenOrder"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 197
    .local v1, bulkValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_2

    .line 198
    const-string v7, "Launcher.LauncherProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid resorder request: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v1, :cond_1

    const-string v9, "null"

    :goto_1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v7, 0x0

    monitor-exit v6

    move v6, v7

    goto :goto_0

    .line 198
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 202
    :cond_2
    const/4 v2, 0x0

    .line 203
    .local v2, count:I
    const/4 v4, 0x0

    .end local p1
    .local v4, order:I
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_3

    .line 204
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 205
    .local v5, update:Landroid/content/ContentValues;
    const-string v7, "screenOrder"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    iget-object v7, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    const-string v8, "_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    aput-object p1, v9, v10

    invoke-virtual {v3, v7, v5, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    add-int/2addr v2, v7

    .line 203
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 210
    .end local v5           #update:Landroid/content/ContentValues;
    :cond_3
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/launcher2/LauncherProvider;->mScreens:Ljava/util/ArrayList;

    .line 211
    monitor-exit v6

    move v6, v2

    goto :goto_0

    .line 214
    .end local v1           #bulkValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #count:I
    .end local v4           #order:I
    .restart local p1
    :cond_4
    iget-object v7, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v3, v7, p2, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    monitor-exit v6

    move v6, v7

    goto :goto_0

    .line 215
    .end local v0           #args:Lcom/android/launcher2/LauncherProvider$SqlArguments;
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local p0
    .end local p1
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method
