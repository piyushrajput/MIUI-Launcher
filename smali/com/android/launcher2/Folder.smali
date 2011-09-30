.class public Lcom/android/launcher2/Folder;
.super Landroid/widget/LinearLayout;
.source "Folder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/android/launcher2/DragSource;


# instance fields
.field private mClosing:Z

.field protected mContent:Landroid/widget/AbsListView;

.field protected mDragController:Lcom/android/launcher2/DragController;

.field protected mDragItem:Lcom/android/launcher2/ShortcutInfo;

.field private mFadeIn:Landroid/view/animation/Animation;

.field private mFadeOut:Landroid/view/animation/Animation;

.field protected mFolderIcon:Lcom/android/launcher2/FolderIcon;

.field protected mInfo:Lcom/android/launcher2/FolderInfo;

.field protected mLauncher:Lcom/android/launcher2/Launcher;

.field protected mSecurityHelper:Landroid/security/ChooseLockSettingsHelper;

.field protected mTitleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    iput-object v0, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    .line 54
    iput-object v0, p0, Lcom/android/launcher2/Folder;->mSecurityHelper:Landroid/security/ChooseLockSettingsHelper;

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->setWholeAnimationCacheEnabled(Z)V

    .line 76
    const v0, 0x7f04000f

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Folder;->mFadeIn:Landroid/view/animation/Animation;

    .line 77
    const v0, 0x7f040011

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Folder;->mFadeOut:Landroid/view/animation/Animation;

    .line 78
    return-void
.end method

.method private finishShow()V
    .locals 3

    .prologue
    .line 202
    iget-boolean v1, p0, Lcom/android/launcher2/Folder;->mClosing:Z

    if-eqz v1, :cond_1

    .line 203
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentCellLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->requestFocus()Z

    .line 204
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 205
    .local v0, parent:Landroid/view/ViewParent;
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Folder;->setVisibility(I)V

    .line 206
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 207
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #parent:Landroid/view/ViewParent;
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/launcher2/FolderInfo;->opened:Z

    .line 211
    :cond_1
    return-void
.end method


# virtual methods
.method bind(Lcom/android/launcher2/FolderInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    .line 215
    return-void
.end method

.method getInfo()Lcom/android/launcher2/FolderInfo;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    return-object v0
.end method

.method notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 112
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIcon;->loadItemIcons()V

    .line 115
    :cond_0
    return-void
.end method

.method protected onAnimationEnd()V
    .locals 0

    .prologue
    .line 219
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAnimationEnd()V

    .line 220
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->finishShow()V

    .line 221
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 239
    :goto_0
    return-void

    .line 236
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;)Z

    goto :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0x7f07000f
        :pswitch_0
    .end packed-switch
.end method

.method onClose(Z)V
    .locals 9
    .parameter "allowAnimation"

    .prologue
    const/high16 v1, 0x3f80

    const v2, 0x3f19999a

    const/4 v6, 0x1

    .line 172
    iget-boolean v0, p0, Lcom/android/launcher2/Folder;->mClosing:Z

    if-eqz v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 175
    :cond_0
    iput-boolean v6, p0, Lcom/android/launcher2/Folder;->mClosing:Z

    .line 176
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->clearAnimation()V

    .line 178
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIcon;->onClose()V

    .line 185
    if-nez p1, :cond_2

    .line 186
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->finishShow()V

    goto :goto_0

    .line 181
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->finishShow()V

    goto :goto_0

    .line 190
    :cond_2
    new-instance v7, Landroid/view/animation/AnimationSet;

    invoke-direct {v7, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 191
    .local v7, animation:Landroid/view/animation/AnimationSet;
    const/4 v0, 0x2

    new-array v8, v0, [I

    .line 192
    .local v8, pos:[I
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v0, v8}, Lcom/android/launcher2/FolderIcon;->getLocationOnScreen([I)V

    .line 193
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v3, 0x0

    aget v3, v8, v3

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v4}, Lcom/android/launcher2/FolderIcon;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v5, v3

    aget v3, v8, v6

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 195
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 196
    const-wide/16 v0, 0x96

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 197
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 198
    invoke-virtual {p0, v7}, Lcom/android/launcher2/Folder;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public onDropCompleted(Landroid/view/View;Z)V
    .locals 0
    .parameter "target"
    .parameter "success"

    .prologue
    .line 98
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 84
    const v0, 0x7f070010

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    iput-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Landroid/widget/AbsListView;

    .line 85
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Landroid/widget/AbsListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setWholeAnimationCacheEnabled(Z)V

    .line 88
    const v0, 0x7f070018

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/Folder;->mTitleText:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f07000f

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method onOpen(Z)V
    .locals 9
    .parameter "allowAnimation"

    .prologue
    const/high16 v2, 0x3f80

    const v1, 0x3f19999a

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 142
    iput-boolean v4, p0, Lcom/android/launcher2/Folder;->mClosing:Z

    .line 143
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iput-boolean v6, v0, Lcom/android/launcher2/FolderInfo;->opened:Z

    .line 144
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 145
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mTitleText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-object v3, v3, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->clearAnimation()V

    .line 148
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Folder;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIcon;->onOpen()V

    .line 156
    if-nez p1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    new-instance v7, Landroid/view/animation/AnimationSet;

    invoke-direct {v7, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 161
    .local v7, animation:Landroid/view/animation/AnimationSet;
    const/4 v0, 0x2

    new-array v8, v0, [I

    .line 162
    .local v8, pos:[I
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v0, v8}, Lcom/android/launcher2/FolderIcon;->getLocationOnScreen([I)V

    .line 163
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    aget v3, v8, v4

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v4}, Lcom/android/launcher2/FolderIcon;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v5, v3

    aget v3, v8, v6

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 165
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 166
    const-wide/16 v0, 0x96

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 167
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 168
    invoke-virtual {p0, v7}, Lcom/android/launcher2/Folder;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method setContentAdapter(Landroid/widget/BaseAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/Adapter;)V

    .line 108
    return-void
.end method

.method public setDragController(Lcom/android/launcher2/DragController;)V
    .locals 0
    .parameter "dragController"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mDragController:Lcom/android/launcher2/DragController;

    .line 95
    return-void
.end method

.method setFolderIcon(Landroid/view/View;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 123
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/launcher2/FolderIcon;

    if-eqz v0, :cond_0

    .line 124
    check-cast p1, Lcom/android/launcher2/FolderIcon;

    .end local p1
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    .line 128
    :goto_0
    return-void

    .line 126
    .restart local p1
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/Folder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    goto :goto_0
.end method

.method setLauncher(Lcom/android/launcher2/Launcher;)V
    .locals 2
    .parameter "launcher"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 119
    new-instance v0, Landroid/security/ChooseLockSettingsHelper;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-direct {v0, v1}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/launcher2/Folder;->mSecurityHelper:Landroid/security/ChooseLockSettingsHelper;

    .line 120
    return-void
.end method
