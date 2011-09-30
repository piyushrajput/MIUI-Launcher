.class public Lcom/android/launcher2/IconCache;
.super Ljava/lang/Object;
.source "IconCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/IconCache$1;,
        Lcom/android/launcher2/IconCache$CacheEntry;
    }
.end annotation


# instance fields
.field private final mBubble:Lcom/android/launcher2/Utilities$BubbleText;

.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/launcher2/IconCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Lcom/android/launcher2/LauncherApplication;

.field private mDefaultIcon:Landroid/graphics/Bitmap;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/LauncherApplication;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher2/IconCache;->mCache:Ljava/util/HashMap;

    .line 56
    iput-object p1, p0, Lcom/android/launcher2/IconCache;->mContext:Lcom/android/launcher2/LauncherApplication;

    .line 57
    invoke-virtual {p1}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 58
    new-instance v0, Lcom/android/launcher2/Utilities$BubbleText;

    invoke-direct {v0, p1}, Lcom/android/launcher2/Utilities$BubbleText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher2/IconCache;->mBubble:Lcom/android/launcher2/Utilities$BubbleText;

    .line 59
    invoke-direct {p0}, Lcom/android/launcher2/IconCache;->makeDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/IconCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 60
    return-void
.end method

.method private cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Z)Lcom/android/launcher2/IconCache$CacheEntry;
    .locals 7
    .parameter "componentName"
    .parameter "info"
    .parameter "isShortcut"

    .prologue
    .line 137
    iget-object v4, p0, Lcom/android/launcher2/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/IconCache$CacheEntry;

    .line 138
    .local v2, entry:Lcom/android/launcher2/IconCache$CacheEntry;
    if-nez v2, :cond_1

    .line 139
    new-instance v2, Lcom/android/launcher2/IconCache$CacheEntry;

    .end local v2           #entry:Lcom/android/launcher2/IconCache$CacheEntry;
    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/android/launcher2/IconCache$CacheEntry;-><init>(Lcom/android/launcher2/IconCache$1;)V

    .line 141
    .restart local v2       #entry:Lcom/android/launcher2/IconCache$CacheEntry;
    iget-object v4, p0, Lcom/android/launcher2/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :try_start_0
    iget-object v4, p0, Lcom/android/launcher2/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/launcher2/IconCache$CacheEntry;->title:Ljava/lang/String;

    .line 145
    iget-object v4, v2, Lcom/android/launcher2/IconCache$CacheEntry;->title:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 146
    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/launcher2/IconCache$CacheEntry;->title:Ljava/lang/String;

    .line 149
    :cond_0
    if-eqz p3, :cond_2

    .line 150
    iget-object v4, p0, Lcom/android/launcher2/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v5, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 151
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcom/android/launcher2/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .line 152
    .local v3, r:Landroid/content/res/Resources;
    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->icon:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 153
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Landroid/app/IconCustomizer;->generateShortcutIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v2, Lcom/android/launcher2/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 163
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v3           #r:Landroid/content/res/Resources;
    :cond_1
    :goto_0
    return-object v2

    .line 156
    :cond_2
    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, p0, Lcom/android/launcher2/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v5}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 157
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/launcher2/IconCache;->mContext:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v1, v4}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v2, Lcom/android/launcher2/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private makeDefaultIcon()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 63
    iget-object v1, p0, Lcom/android/launcher2/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 64
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/launcher2/IconCache;->mContext:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v0, v1}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public flush()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/launcher2/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v0

    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 107
    monitor-exit v0

    .line 108
    return-void

    .line 107
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDefaultIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/launcher2/IconCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIcon(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "component"
    .parameter "resolveInfo"

    .prologue
    .line 126
    iget-object v1, p0, Lcom/android/launcher2/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 127
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 128
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    monitor-exit v1

    move-object v1, v2

    .line 132
    :goto_0
    return-object v1

    .line 131
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lcom/android/launcher2/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Z)Lcom/android/launcher2/IconCache$CacheEntry;

    move-result-object v0

    .line 132
    .local v0, entry:Lcom/android/launcher2/IconCache$CacheEntry;
    iget-object v2, v0, Lcom/android/launcher2/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    monitor-exit v1

    move-object v1, v2

    goto :goto_0

    .line 133
    .end local v0           #entry:Lcom/android/launcher2/IconCache$CacheEntry;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getIcon(Landroid/content/Intent;I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "intent"
    .parameter "itemType"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 111
    iget-object v3, p0, Lcom/android/launcher2/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v3

    .line 112
    :try_start_0
    iget-object v4, p0, Lcom/android/launcher2/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 113
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 115
    .local v0, component:Landroid/content/ComponentName;
    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 116
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/IconCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    monitor-exit v3

    move-object v3, v4

    .line 121
    :goto_0
    return-object v3

    .line 119
    :cond_1
    if-ne p2, v7, :cond_2

    move v4, v7

    :goto_1
    invoke-direct {p0, v0, v2, v4}, Lcom/android/launcher2/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Z)Lcom/android/launcher2/IconCache$CacheEntry;

    move-result-object v1

    .line 121
    .local v1, entry:Lcom/android/launcher2/IconCache$CacheEntry;
    iget-object v4, v1, Lcom/android/launcher2/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    monitor-exit v3

    move-object v3, v4

    goto :goto_0

    .end local v1           #entry:Lcom/android/launcher2/IconCache$CacheEntry;
    :cond_2
    move v4, v6

    .line 119
    goto :goto_1

    .line 122
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v2           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public remove(Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"

    .prologue
    .line 88
    iget-object v3, p0, Lcom/android/launcher2/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v3

    .line 89
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v2, toBeRemoved:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v4, p0, Lcom/android/launcher2/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 91
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 92
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #toBeRemoved:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 95
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #toBeRemoved:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 96
    .restart local v0       #component:Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/android/launcher2/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 98
    .end local v0           #component:Landroid/content/ComponentName;
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    return-void
.end method

.method public updateDefaultIcon()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/launcher2/IconCache;->makeDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/IconCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 69
    return-void
.end method
