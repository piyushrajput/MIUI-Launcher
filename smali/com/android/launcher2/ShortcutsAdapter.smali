.class public Lcom/android/launcher2/ShortcutsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ShortcutsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/ShortcutsAdapter$TitleComparator;,
        Lcom/android/launcher2/ShortcutsAdapter$FrequencyComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/launcher2/ShortcutInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mAbcMap:[Ljava/lang/Object;

.field private mEnforceShow:Z

.field private mFrequencyMap:[Ljava/lang/Object;

.field private mIconCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/launcher2/ShortcutInfo;",
            "Lcom/android/launcher2/ShortcutIcon;",
            ">;"
        }
    .end annotation
.end field

.field private mInfo:Lcom/android/launcher2/UserFolderInfo;

.field private final mLauncher:Lcom/android/launcher2/Launcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher2/UserFolderInfo;)V
    .locals 2
    .parameter "context"
    .parameter "info"

    .prologue
    const/4 v1, 0x0

    .line 64
    iget-object v0, p2, Lcom/android/launcher2/UserFolderInfo;->contents:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 40
    iput-boolean v1, p0, Lcom/android/launcher2/ShortcutsAdapter;->mEnforceShow:Z

    .line 44
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/ShortcutsAdapter;->mIconCache:Ljava/util/WeakHashMap;

    .line 65
    iput-object p2, p0, Lcom/android/launcher2/ShortcutsAdapter;->mInfo:Lcom/android/launcher2/UserFolderInfo;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getLauncher()Lcom/android/launcher2/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/ShortcutsAdapter;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 67
    invoke-direct {p0}, Lcom/android/launcher2/ShortcutsAdapter;->buildSortingMap()V

    .line 68
    return-void
.end method

.method private buildSortingMap()V
    .locals 9

    .prologue
    .line 83
    new-instance v6, Lcom/android/launcher2/ShortcutsAdapter$TitleComparator;

    invoke-direct {v6}, Lcom/android/launcher2/ShortcutsAdapter$TitleComparator;-><init>()V

    .line 84
    .local v6, tc:Lcom/android/launcher2/ShortcutsAdapter$TitleComparator;
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, v6}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 85
    .local v0, abcMap:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v1, Lcom/android/launcher2/ShortcutsAdapter$FrequencyComparator;

    invoke-direct {v1}, Lcom/android/launcher2/ShortcutsAdapter$FrequencyComparator;-><init>()V

    .line 86
    .local v1, fc:Lcom/android/launcher2/ShortcutsAdapter$FrequencyComparator;
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 87
    .local v2, frequencyMap:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 88
    .local v3, i:I
    iget-object v7, p0, Lcom/android/launcher2/ShortcutsAdapter;->mInfo:Lcom/android/launcher2/UserFolderInfo;

    iget-object v7, v7, Lcom/android/launcher2/UserFolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/ShortcutInfo;

    .line 89
    .local v5, si:Lcom/android/launcher2/ShortcutInfo;
    iget-object v7, v5, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez v7, :cond_0

    const-string v7, ""

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget v7, v5, Lcom/android/launcher2/ShortcutInfo;->launchCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 89
    :cond_0
    iget-object v7, v5, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 93
    .end local v5           #si:Lcom/android/launcher2/ShortcutInfo;
    :cond_1
    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher2/ShortcutsAdapter;->mAbcMap:[Ljava/lang/Object;

    .line 94
    invoke-interface {v2}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher2/ShortcutsAdapter;->mFrequencyMap:[Ljava/lang/Object;

    .line 95
    return-void
.end method

.method private getSortedPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/launcher2/ShortcutsAdapter;->mInfo:Lcom/android/launcher2/UserFolderInfo;

    iget v0, v0, Lcom/android/launcher2/UserFolderInfo;->sortMode:I

    packed-switch v0, :pswitch_data_0

    .line 79
    const/4 v0, 0x0

    .end local p0
    :goto_0
    return v0

    .restart local p0
    :pswitch_0
    move v0, p1

    .line 73
    goto :goto_0

    .line 75
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher2/ShortcutsAdapter;->mAbcMap:[Ljava/lang/Object;

    aget-object p0, v0, p1

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 77
    .restart local p0
    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher2/ShortcutsAdapter;->mFrequencyMap:[Ljava/lang/Object;

    aget-object p0, v0, p1

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public enforceShow(Z)V
    .locals 0
    .parameter "isEnforced"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/launcher2/ShortcutsAdapter;->mEnforceShow:Z

    .line 99
    return-void
.end method

.method public getItem(I)Lcom/android/launcher2/ShortcutInfo;
    .locals 1
    .parameter "position"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/launcher2/ShortcutsAdapter;->getSortedPosition(I)I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/launcher2/ShortcutInfo;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/android/launcher2/ShortcutsAdapter;->getItem(I)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lcom/android/launcher2/ShortcutsAdapter;->getItem(I)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v1

    .line 115
    .local v1, info:Lcom/android/launcher2/ShortcutInfo;
    iget-object v2, p0, Lcom/android/launcher2/ShortcutsAdapter;->mIconCache:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ShortcutIcon;

    .line 116
    .local v0, icon:Lcom/android/launcher2/ShortcutIcon;
    if-nez v0, :cond_0

    .line 117
    const v2, 0x7f030003

    iget-object v3, p0, Lcom/android/launcher2/ShortcutsAdapter;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {v2, v3, p3, v1}, Lcom/android/launcher2/ShortcutIcon;->fromXml(ILcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher2/ShortcutInfo;)Lcom/android/launcher2/ShortcutIcon;

    move-result-object v0

    .line 118
    iget-object v2, p0, Lcom/android/launcher2/ShortcutsAdapter;->mIconCache:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_0
    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 109
    invoke-direct {p0}, Lcom/android/launcher2/ShortcutsAdapter;->buildSortingMap()V

    .line 110
    return-void
.end method
