.class public Lcom/android/launcher2/gadget/GlobalSearch;
.super Landroid/widget/FrameLayout;
.source "GlobalSearch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/launcher2/gadget/Gadget;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 15
    const v0, 0x7f030014

    invoke-static {p1, v0, p0}, Lcom/android/launcher2/gadget/GlobalSearch;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    const v0, 0x7f070022

    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/GlobalSearch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 21
    iget-object v2, p0, Lcom/android/launcher2/gadget/GlobalSearch;->mContext:Landroid/content/Context;

    const-string v3, "search"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 22
    .local v0, sm:Landroid/app/SearchManager;
    if-eqz v0, :cond_0

    .line 23
    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v3, v1

    move-object v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 25
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public onEditDisable()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public onEditNormal()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public updateConfig(Landroid/os/Bundle;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 66
    return-void
.end method
