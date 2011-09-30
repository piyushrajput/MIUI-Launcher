.class public Lcom/android/launcher2/UserFolder;
.super Lcom/android/launcher2/Folder;
.source "UserFolder.java"

# interfaces
.implements Lcom/android/launcher2/DropTarget;


# instance fields
.field private mDirty:Z

.field private mEditPanelShowing:Z

.field private mEditTitleBtn:Landroid/view/View;

.field private mFadeIn:Landroid/view/animation/Animation;

.field private mFadeOut:Landroid/view/animation/Animation;

.field private mFolderSetting:Landroid/view/ViewGroup;

.field private mRenameEdit:Landroid/widget/EditText;

.field private mShrinkToBottom:Landroid/view/animation/Animation;

.field private mShrinkToTop:Landroid/view/animation/Animation;

.field private mSortByAbc:Landroid/widget/Checkable;

.field private mSortByFrequency:Landroid/widget/Checkable;

.field private mSortByNotDefined:Landroid/widget/Checkable;

.field private mStretchFromBottom:Landroid/view/animation/Animation;

.field private mStretchFromTop:Landroid/view/animation/Animation;

.field private mTag:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Folder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput-boolean v0, p0, Lcom/android/launcher2/UserFolder;->mDirty:Z

    .line 35
    iput-boolean v0, p0, Lcom/android/launcher2/UserFolder;->mEditPanelShowing:Z

    .line 47
    return-void
.end method

.method private confirmEdit()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, changed:Z
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mSortByNotDefined:Landroid/widget/Checkable;

    invoke-interface {v1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 119
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget v1, v1, Lcom/android/launcher2/FolderInfo;->sortMode:I

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/launcher2/FolderInfo;->sortMode:I

    .line 121
    const/4 v0, 0x1

    .line 134
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-object v2, v2, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    if-eq v1, v2, :cond_1

    .line 135
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-object v2, p0, Lcom/android/launcher2/UserFolder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 136
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v2, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Launcher;->getFolderIcon(Lcom/android/launcher2/FolderInfo;)Lcom/android/launcher2/FolderIcon;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-object v2, v2, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderIcon;->setTitle(Ljava/lang/CharSequence;)V

    .line 137
    const/4 v0, 0x1

    .line 139
    :cond_1
    if-eqz v0, :cond_2

    .line 140
    invoke-virtual {p0}, Lcom/android/launcher2/UserFolder;->notifyDataSetChanged()V

    .line 141
    invoke-virtual {p0}, Lcom/android/launcher2/UserFolder;->saveFolderToDatabase()V

    .line 143
    :cond_2
    return-void

    .line 123
    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mSortByAbc:Landroid/widget/Checkable;

    invoke-interface {v1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 124
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget v1, v1, Lcom/android/launcher2/FolderInfo;->sortMode:I

    if-eq v1, v2, :cond_0

    .line 125
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iput v2, v1, Lcom/android/launcher2/FolderInfo;->sortMode:I

    .line 126
    const/4 v0, 0x1

    goto :goto_0

    .line 128
    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mSortByFrequency:Landroid/widget/Checkable;

    invoke-interface {v1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget v1, v1, Lcom/android/launcher2/FolderInfo;->sortMode:I

    if-eq v1, v3, :cond_0

    .line 130
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iput v3, v1, Lcom/android/launcher2/FolderInfo;->sortMode:I

    .line 131
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static fromXml(Landroid/content/Context;)Lcom/android/launcher2/UserFolder;
    .locals 3
    .parameter "context"

    .prologue
    .line 57
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030020

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/launcher2/UserFolder;

    return-object p0
.end method

.method private loadEditSetting()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 150
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mRenameEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget v0, v0, Lcom/android/launcher2/FolderInfo;->sortMode:I

    packed-switch v0, :pswitch_data_0

    .line 162
    :goto_0
    return-void

    .line 153
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mSortByNotDefined:Landroid/widget/Checkable;

    invoke-interface {v0, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0

    .line 156
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mSortByAbc:Landroid/widget/Checkable;

    invoke-interface {v0, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0

    .line 159
    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mSortByFrequency:Landroid/widget/Checkable;

    invoke-interface {v0, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showEditPanel(Z)V
    .locals 1
    .parameter "isShow"

    .prologue
    .line 165
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/UserFolder;->showEditPanel(ZZ)V

    .line 166
    return-void
.end method

.method private showEditPanel(ZZ)V
    .locals 5
    .parameter "isShow"
    .parameter "showAnimation"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 169
    iget-boolean v0, p0, Lcom/android/launcher2/UserFolder;->mEditPanelShowing:Z

    if-ne v0, p1, :cond_0

    .line 198
    :goto_0
    return-void

    .line 173
    :cond_0
    if-eqz p1, :cond_2

    .line 174
    invoke-direct {p0}, Lcom/android/launcher2/UserFolder;->loadEditSetting()V

    .line 175
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mTitleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mFolderSetting:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mEditTitleBtn:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 179
    if-eqz p2, :cond_1

    .line 180
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mTitleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 181
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mFolderSetting:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mStretchFromTop:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 182
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mContent:Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mShrinkToBottom:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 183
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mEditTitleBtn:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 197
    :cond_1
    :goto_1
    iput-boolean p1, p0, Lcom/android/launcher2/UserFolder;->mEditPanelShowing:Z

    goto :goto_0

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mTitleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mFolderSetting:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mEditTitleBtn:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->setVisibility(I)V

    .line 190
    if-eqz p2, :cond_1

    .line 191
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mTitleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 192
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mFolderSetting:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mShrinkToTop:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 193
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mContent:Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mStretchFromBottom:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 194
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mEditTitleBtn:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)Z
    .locals 5
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    const/4 v4, 0x1

    .line 220
    iget v0, p7, Lcom/android/launcher2/ItemInfo;->itemType:I

    if-eqz v0, :cond_0

    iget v0, p7, Lcom/android/launcher2/ItemInfo;->itemType:I

    if-ne v0, v4, :cond_1

    :cond_0
    iget-wide v0, p7, Lcom/android/launcher2/ItemInfo;->container:J

    iget-object v2, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-wide v2, v2, Lcom/android/launcher2/FolderInfo;->id:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p7, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    move v0, v4

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method bind(Lcom/android/launcher2/FolderInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    .line 260
    invoke-super {p0, p1}, Lcom/android/launcher2/Folder;->bind(Lcom/android/launcher2/FolderInfo;)V

    .line 261
    new-instance v2, Lcom/android/launcher2/ShortcutsAdapter;

    iget-object v3, p0, Lcom/android/launcher2/UserFolder;->mContext:Landroid/content/Context;

    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/UserFolderInfo;

    move-object v1, v0

    invoke-direct {v2, v3, v1}, Lcom/android/launcher2/ShortcutsAdapter;-><init>(Landroid/content/Context;Lcom/android/launcher2/UserFolderInfo;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher2/UserFolder;->setContentAdapter(Landroid/widget/BaseAdapter;)V

    .line 262
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mTag:Landroid/os/Bundle;

    const-string v2, "favorites._id"

    iget-wide v3, p1, Lcom/android/launcher2/FolderInfo;->id:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 263
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/android/launcher2/Folder;->onClick(Landroid/view/View;)V

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 101
    :goto_0
    return-void

    .line 93
    :sswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher2/UserFolder;->showEditPanel(Z)V

    goto :goto_0

    .line 96
    :sswitch_1
    invoke-direct {p0}, Lcom/android/launcher2/UserFolder;->confirmEdit()V

    .line 98
    :sswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher2/UserFolder;->showEditPanel(Z)V

    goto :goto_0

    .line 91
    :sswitch_data_0
    .sparse-switch
        0x7f070047 -> :sswitch_0
        0x7f07004e -> :sswitch_1
        0x7f07004f -> :sswitch_2
    .end sparse-switch
.end method

.method onClose(Z)V
    .locals 1
    .parameter "allowAnimation"

    .prologue
    .line 267
    invoke-super {p0, p1}, Lcom/android/launcher2/Folder;->onClose(Z)V

    .line 268
    iget-boolean v0, p0, Lcom/android/launcher2/UserFolder;->mDirty:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    instance-of v0, v0, Lcom/android/launcher2/FolderIcon;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIcon;->loadItemIcons()V

    .line 271
    :cond_0
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 237
    return-void
.end method

.method public onDragExit(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 245
    return-void
.end method

.method public onDragOver(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 241
    return-void
.end method

.method public onDrop(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)Z
    .locals 9
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 227
    move-object/from16 v0, p7

    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    move-object v2, v0

    .line 229
    .local v2, item:Lcom/android/launcher2/ShortcutInfo;
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/launcher2/ShortcutsAdapter;

    invoke-virtual {p1, v2}, Lcom/android/launcher2/ShortcutsAdapter;->add(Ljava/lang/Object;)V

    .line 230
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v3, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    iget-wide v3, v3, Lcom/android/launcher2/FolderInfo;->id:J

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJII)Z

    .line 231
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/UserFolder;->mDirty:Z

    .line 232
    const/4 v1, 0x1

    return v1
.end method

.method public onDropCompleted(Landroid/view/View;Z)V
    .locals 3
    .parameter "target"
    .parameter "success"

    .prologue
    .line 249
    if-eqz p2, :cond_0

    .line 250
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ShortcutsAdapter;

    .line 251
    .local v0, adapter:Lcom/android/launcher2/ShortcutsAdapter;
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mDragItem:Lcom/android/launcher2/ShortcutInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ShortcutsAdapter;->remove(Ljava/lang/Object;)V

    .line 252
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    instance-of v1, v1, Lcom/android/launcher2/FolderIcon;

    if-eqz v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIcon;->loadItemIcons()V

    .line 256
    .end local v0           #adapter:Lcom/android/launcher2/ShortcutsAdapter;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mDragController:Lcom/android/launcher2/DragController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/DragController;->setTouchTranslator(Lcom/android/launcher2/DragController$TouchTranslator;)V

    .line 257
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 62
    invoke-super {p0}, Lcom/android/launcher2/Folder;->onFinishInflate()V

    .line 63
    const v1, 0x7f070047

    invoke-virtual {p0, v1}, Lcom/android/launcher2/UserFolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/UserFolder;->mEditTitleBtn:Landroid/view/View;

    .line 64
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mEditTitleBtn:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v1, 0x7f07004e

    invoke-virtual {p0, v1}, Lcom/android/launcher2/UserFolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v1, 0x7f07004f

    invoke-virtual {p0, v1}, Lcom/android/launcher2/UserFolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v1, 0x7f070048

    invoke-virtual {p0, v1}, Lcom/android/launcher2/UserFolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/launcher2/UserFolder;->mFolderSetting:Landroid/view/ViewGroup;

    .line 68
    const v1, 0x7f07004b

    invoke-virtual {p0, v1}, Lcom/android/launcher2/UserFolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Checkable;

    iput-object v1, p0, Lcom/android/launcher2/UserFolder;->mSortByNotDefined:Landroid/widget/Checkable;

    .line 69
    const v1, 0x7f07004d

    invoke-virtual {p0, v1}, Lcom/android/launcher2/UserFolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Checkable;

    iput-object v1, p0, Lcom/android/launcher2/UserFolder;->mSortByAbc:Landroid/widget/Checkable;

    .line 70
    const v1, 0x7f07004c

    invoke-virtual {p0, v1}, Lcom/android/launcher2/UserFolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Checkable;

    iput-object v1, p0, Lcom/android/launcher2/UserFolder;->mSortByFrequency:Landroid/widget/Checkable;

    .line 71
    const v1, 0x7f070049

    invoke-virtual {p0, v1}, Lcom/android/launcher2/UserFolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/launcher2/UserFolder;->mRenameEdit:Landroid/widget/EditText;

    .line 72
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mFolderSetting:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setWholeAnimationCacheEnabled(Z)V

    .line 73
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/UserFolder;->mTag:Landroid/os/Bundle;

    .line 75
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 76
    .local v0, li:Landroid/view/animation/LinearInterpolator;
    invoke-virtual {p0}, Lcom/android/launcher2/UserFolder;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04000f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/UserFolder;->mFadeIn:Landroid/view/animation/Animation;

    .line 77
    invoke-virtual {p0}, Lcom/android/launcher2/UserFolder;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040011

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/UserFolder;->mFadeOut:Landroid/view/animation/Animation;

    .line 78
    invoke-virtual {p0}, Lcom/android/launcher2/UserFolder;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040016

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/UserFolder;->mShrinkToTop:Landroid/view/animation/Animation;

    .line 79
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mShrinkToTop:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/launcher2/UserFolder;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04001a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/UserFolder;->mStretchFromTop:Landroid/view/animation/Animation;

    .line 81
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mStretchFromTop:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/launcher2/UserFolder;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040015

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/UserFolder;->mShrinkToBottom:Landroid/view/animation/Animation;

    .line 83
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mShrinkToBottom:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/launcher2/UserFolder;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040019

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/UserFolder;->mStretchFromBottom:Landroid/view/animation/Animation;

    .line 85
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mStretchFromBottom:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 86
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 104
    iget-object v3, p0, Lcom/android/launcher2/UserFolder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->isInEditing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    .line 108
    .local v0, app:Lcom/android/launcher2/ShortcutInfo;
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 109
    .local v2, pos:[I
    invoke-virtual {p2, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 110
    new-instance v1, Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 111
    .local v1, intent:Landroid/content/Intent;
    new-instance v3, Landroid/graphics/Rect;

    aget v4, v2, v6

    aget v5, v2, v8

    aget v6, v2, v6

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    aget v7, v2, v8

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 113
    iget-object v3, p0, Lcom/android/launcher2/UserFolder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3, v1, v0}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;)Z

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 201
    invoke-virtual {p2}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 215
    :goto_0
    return v1

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mSecurityHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Landroid/security/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isPrivacyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 206
    goto :goto_0

    .line 209
    :cond_1
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    .line 210
    .local v0, app:Lcom/android/launcher2/ShortcutInfo;
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mDragController:Lcom/android/launcher2/DragController;

    iget-object v2, p0, Lcom/android/launcher2/UserFolder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getTouchTranslator()Lcom/android/launcher2/DragController$TouchTranslator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/DragController;->setTouchTranslator(Lcom/android/launcher2/DragController$TouchTranslator;)V

    .line 211
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mDragController:Lcom/android/launcher2/DragController;

    sget v2, Lcom/android/launcher2/DragController;->DRAG_ACTION_COPY:I

    invoke-virtual {v1, p2, p0, v0, v2}, Lcom/android/launcher2/DragController;->startDrag(Landroid/view/View;Lcom/android/launcher2/DragSource;Lcom/android/launcher2/ItemInfo;I)V

    .line 212
    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;)Z

    .line 213
    iput-object v0, p0, Lcom/android/launcher2/UserFolder;->mDragItem:Lcom/android/launcher2/ShortcutInfo;

    .line 215
    const/4 v1, 0x1

    goto :goto_0
.end method

.method onOpen(Z)V
    .locals 1
    .parameter "allowAnimation"

    .prologue
    const/4 v0, 0x0

    .line 277
    invoke-direct {p0, v0, v0}, Lcom/android/launcher2/UserFolder;->showEditPanel(ZZ)V

    .line 278
    invoke-super {p0, p1}, Lcom/android/launcher2/Folder;->onOpen(Z)V

    .line 279
    invoke-virtual {p0}, Lcom/android/launcher2/UserFolder;->requestFocus()Z

    .line 280
    return-void
.end method

.method saveFolderToDatabase()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/launcher2/UserFolder;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v1, p0, Lcom/android/launcher2/UserFolder;->mInfo:Lcom/android/launcher2/FolderInfo;

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)Z

    .line 147
    return-void
.end method
