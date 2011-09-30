.class Lmobi/intuitit/android/widget/BoundRemoteViews$CursorCache;
.super Ljava/lang/Object;
.source "BoundRemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/intuitit/android/widget/BoundRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CursorCache"
.end annotation


# instance fields
.field final mCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field final mDefaults:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lmobi/intuitit/android/widget/BoundRemoteViews;


# direct methods
.method public constructor <init>(Lmobi/intuitit/android/widget/BoundRemoteViews;Landroid/database/Cursor;Landroid/content/Context;)V
    .locals 8
    .parameter
    .parameter "cursor"
    .parameter "context"

    .prologue
    .line 36
    iput-object p1, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$CursorCache;->this$0:Lmobi/intuitit/android/widget/BoundRemoteViews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    move v3, v6

    .line 39
    .local v3, cacheSize:I
    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$CursorCache;->mCache:Ljava/util/ArrayList;

    .line 40
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$CursorCache;->mDefaults:Ljava/util/HashMap;

    .line 42
    iget-object v2, p1, Lmobi/intuitit/android/widget/BoundRemoteViews;->mActions:Ljava/util/ArrayList;

    .line 44
    .local v2, actions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 45
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;

    .line 46
    .local v1, act:Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;
    instance-of v6, v1, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;

    if-eqz v6, :cond_2

    .line 47
    iget-object v7, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$CursorCache;->mDefaults:Ljava/util/HashMap;

    move-object v0, v1

    check-cast v0, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;

    move-object v6, v0

    invoke-virtual {v6, p3}, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;->getDefault(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 37
    .end local v1           #act:Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;
    .end local v2           #actions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;>;"
    .end local v3           #cacheSize:I
    .end local v4           #i:I
    :cond_1
    const/4 v6, 0x0

    move v3, v6

    goto :goto_0

    .line 48
    .restart local v1       #act:Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;
    .restart local v2       #actions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;>;"
    .restart local v3       #cacheSize:I
    .restart local v4       #i:I
    :cond_2
    instance-of v6, v1, Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;

    if-eqz v6, :cond_0

    .line 49
    iget-object v6, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$CursorCache;->mDefaults:Ljava/util/HashMap;

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 51
    .end local v1           #act:Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;
    :cond_3
    if-eqz p2, :cond_7

    .line 52
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 54
    :goto_3
    invoke-interface {p2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_7

    .line 56
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 59
    .local v5, row:Ljava/util/HashMap;,"Ljava/util/HashMap<Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_6

    .line 60
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;

    .line 61
    .restart local v1       #act:Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;
    instance-of v6, v1, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;

    if-eqz v6, :cond_5

    .line 62
    move-object v0, v1

    check-cast v0, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;

    move-object v6, v0

    invoke-virtual {v6, p2, p3}, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;->readValue(Landroid/database/Cursor;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_4
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 63
    :cond_5
    instance-of v6, v1, Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;

    if-eqz v6, :cond_4

    .line 64
    move-object v0, v1

    check-cast v0, Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;

    move-object v6, v0

    invoke-virtual {v6, p2}, Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;->readValue(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 67
    .end local v1           #act:Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;
    :cond_6
    iget-object v6, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$CursorCache;->mCache:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_3

    .line 71
    .end local v5           #row:Ljava/util/HashMap;,"Ljava/util/HashMap<Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;Ljava/lang/Object;>;"
    :cond_7
    return-void
.end method

.method private dropCacheRow(Ljava/util/HashMap;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, row:Ljava/util/HashMap;,"Ljava/util/HashMap<Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;

    .line 75
    .local v1, key:Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 76
    .local v2, value:Ljava/lang/Object;
    instance-of v3, v2, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 77
    check-cast v2, Landroid/graphics/Bitmap;

    .end local v2           #value:Ljava/lang/Object;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 80
    .end local v1           #key:Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 81
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 84
    iget-object v2, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$CursorCache;->mCache:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 85
    .local v1, row:Ljava/util/HashMap;,"Ljava/util/HashMap<Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;Ljava/lang/Object;>;"
    invoke-direct {p0, v1}, Lmobi/intuitit/android/widget/BoundRemoteViews$CursorCache;->dropCacheRow(Ljava/util/HashMap;)V

    goto :goto_0

    .line 87
    .end local v1           #row:Ljava/util/HashMap;,"Ljava/util/HashMap<Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;Ljava/lang/Object;>;"
    :cond_0
    iget-object v2, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$CursorCache;->mCache:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 88
    iget-object v2, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$CursorCache;->mDefaults:Ljava/util/HashMap;

    invoke-direct {p0, v2}, Lmobi/intuitit/android/widget/BoundRemoteViews$CursorCache;->dropCacheRow(Ljava/util/HashMap;)V

    .line 89
    return-void
.end method

.method public getValueOrDefault(ILmobi/intuitit/android/widget/SimpleRemoteViews$Action;)Ljava/lang/Object;
    .locals 3
    .parameter "index"
    .parameter "target"

    .prologue
    .line 27
    iget-object v2, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$CursorCache;->mCache:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 28
    .local v1, row:Ljava/util/HashMap;,"Ljava/util/HashMap<Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 29
    .local v0, result:Ljava/lang/Object;
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 31
    .end local v0           #result:Ljava/lang/Object;
    :cond_0
    if-nez v0, :cond_1

    .line 32
    iget-object v2, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$CursorCache;->mDefaults:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .restart local v0       #result:Ljava/lang/Object;
    move-object v2, v0

    .line 33
    .end local v0           #result:Ljava/lang/Object;
    :goto_0
    return-object v2

    :cond_1
    move-object v2, v0

    goto :goto_0
.end method
