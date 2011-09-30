.class public Lcom/android/launcher2/gadget/ClockGadgetDelegate;
.super Lcom/android/launcher2/gadget/ConfigableGadget;
.source "ClockGadgetDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/gadget/ClockGadgetDelegate$MountedChangedReceiver;
    }
.end annotation


# static fields
.field private static final EXTERNAL_ZIP_DIR:Ljava/lang/String;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field mActualGadget:Lcom/android/launcher2/gadget/Gadget;

.field final mClock:Lcom/android/launcher2/gadget/Clock;

.field private mEditView:Landroid/view/View;

.field private mErrorDisplay:Landroid/view/View;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRequestCode:I

.field mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getMIUIExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/gadget/clock/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->EXTERNAL_ZIP_DIR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .parameter "a"
    .parameter "requestCode"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/launcher2/gadget/ConfigableGadget;-><init>(Landroid/content/Context;)V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mStatus:I

    .line 66
    iput-object p1, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mActivity:Landroid/app/Activity;

    .line 67
    new-instance v0, Lcom/android/launcher2/gadget/Clock;

    invoke-direct {v0, p1}, Lcom/android/launcher2/gadget/Clock;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mClock:Lcom/android/launcher2/gadget/Clock;

    .line 68
    new-instance v0, Lcom/android/launcher2/gadget/ClockGadgetDelegate$MountedChangedReceiver;

    invoke-direct {v0, p0}, Lcom/android/launcher2/gadget/ClockGadgetDelegate$MountedChangedReceiver;-><init>(Lcom/android/launcher2/gadget/ClockGadgetDelegate;)V

    iput-object v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    iput p2, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mRequestCode:I

    .line 70
    return-void
.end method

.method private adjustByAttributes(Lorg/w3c/dom/Element;Landroid/view/View;)V
    .locals 9
    .parameter "root"
    .parameter "view"

    .prologue
    const/16 v8, 0x33

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 242
    const-string v5, "clock_x"

    invoke-direct {p0, p1, v5, v6}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->getIntFromElement(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    .line 243
    .local v0, clockX:I
    const-string v5, "clock_y"

    invoke-direct {p0, p1, v5, v6}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->getIntFromElement(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v1

    .line 244
    .local v1, clockY:I
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 245
    .local v4, lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 246
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 247
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 248
    invoke-virtual {p2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    const-string v5, "edit_tag_x"

    invoke-direct {p0, p1, v5, v7}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->getIntFromElement(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v2

    .line 251
    .local v2, editX:I
    const-string v5, "edit_tag_y"

    invoke-direct {p0, p1, v5, v7}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->getIntFromElement(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v3

    .line 252
    .local v3, editY:I
    iget-object v5, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mEditView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .end local v4           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 253
    .restart local v4       #lp:Landroid/widget/FrameLayout$LayoutParams;
    if-ltz v2, :cond_0

    if-ltz v3, :cond_0

    .line 254
    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 255
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 256
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 262
    :goto_0
    iget-object v5, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mEditView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    return-void

    .line 258
    :cond_0
    const/16 v5, 0x35

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 259
    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 260
    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method

.method private getDefaultZip()Ljava/lang/String;
    .locals 7

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/gadget/GadgetInfo;

    .line 284
    .local v1, info:Lcom/android/launcher2/gadget/GadgetInfo;
    iget v0, v1, Lcom/android/launcher2/gadget/GadgetInfo;->mGadgetId:I

    .line 285
    .local v0, gadgetId:I
    packed-switch v0, :pswitch_data_0

    .line 293
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "\u4e0d\u652f\u6301gadget\u5c3a\u5bf8 gadgetId = %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 287
    :pswitch_0
    const-string v2, "/system/media/gadget/clock/clock_12.zip"

    .line 291
    :goto_0
    return-object v2

    .line 289
    :pswitch_1
    const-string v2, "/system/media/gadget/clock/clock_22.zip"

    goto :goto_0

    .line 291
    :pswitch_2
    const-string v2, "/system/media/gadget/clock/clock_24.zip"

    goto :goto_0

    .line 285
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getIntFromElement(Lorg/w3c/dom/Element;Ljava/lang/String;I)I
    .locals 3
    .parameter "element"
    .parameter "key"
    .parameter "dftValue"

    .prologue
    .line 266
    move v0, p3

    .line 268
    .local v0, ret:I
    :try_start_0
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, str:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 270
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 275
    .end local v1           #str:Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 272
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private setupViews()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, -0x2

    .line 152
    iget-object v2, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    const v3, 0x7f03000e

    invoke-static {v2, v3, p0}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 153
    const v2, 0x7f07001c

    invoke-virtual {p0, v2}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mErrorDisplay:Landroid/view/View;

    .line 154
    iget-object v2, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mErrorDisplay:Landroid/view/View;

    const v3, 0x7f07001d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f02002d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 155
    iget-object v2, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mErrorDisplay:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 157
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 158
    .local v0, editView:Landroid/widget/ImageView;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 159
    .local v1, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x35

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 160
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    const v2, 0x7f02003d

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 162
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    iput-object v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mEditView:Landroid/view/View;

    .line 164
    iget-object v2, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mEditView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->addView(Landroid/view/View;)V

    .line 165
    return-void
.end method


# virtual methods
.method getConfig()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->loadConfig()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, config:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->getDefaultZip()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getEditView()Landroid/view/View;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mEditView:Landroid/view/View;

    return-object v0
.end method

.method protected getPrefPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    const-string v0, "clock"

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-class v11, Lcom/android/launcher2/ClockStylePicker;

    .line 301
    invoke-super {p0, p1}, Lcom/android/launcher2/gadget/ConfigableGadget;->onClick(Landroid/view/View;)V

    .line 302
    iget-object v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mEditView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/gadget/GadgetInfo;

    iget v0, v0, Lcom/android/launcher2/gadget/GadgetInfo;->mGadgetId:I

    invoke-static {v0}, Lcom/android/launcher2/gadget/GadgetFactory;->getInfo(I)Lcom/android/launcher2/gadget/GadgetInfo;

    move-result-object v0

    .line 304
    iget v1, v0, Lcom/android/launcher2/gadget/GadgetInfo;->spanX:I

    iget v2, v0, Lcom/android/launcher2/gadget/GadgetInfo;->spanY:I

    invoke-static {v1, v2}, Lcom/android/launcher2/gadget/Utils;->getFilterCode(II)I

    move-result v1

    .line 306
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/launcher2/ClockStylePicker;

    invoke-direct {v2, v3, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 307
    const-string v3, "android.intent.action.PICK_RESOURCE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    const-string v3, "com.miui.android.resourcebrowser.TRACK_ID"

    invoke-virtual {p0}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->getItemId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    const-string v3, "com.miui.android.resourcebrowser.USING_PICKER"

    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 310
    const-string v3, "com.miui.android.resourcebrowser.RESOURCE_SET_PACKAGE"

    iget-object v4, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const-string v3, "com.miui.android.resourcebrowser.RESOURCE_TYPE_PARAMETER"

    const-string v4, "%s&filter=%d"

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "5"

    aput-object v6, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    const-string v3, "com.miui.android.resourcebrowser.RESOURCE_SET_CATEGORY"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 313
    const-string v3, "com.miui.android.resourcebrowser.RESOURCE_SET_NAME"

    iget-object v4, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    iget v0, v0, Lcom/android/launcher2/gadget/GadgetInfo;->mTitleId:I

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    const-string v0, "com.miui.android.resourcebrowser.RESOURCE_SET_CODE"

    const-string v3, "clock"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    const-string v0, "com.miui.android.resourcebrowser.DISPLAY_TYPE"

    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 316
    const-string v0, "com.miui.android.resourcebrowser.SOURCE_FOLDERS"

    new-array v3, v10, [Ljava/lang/String;

    sget-object v4, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->EXTERNAL_ZIP_DIR:Ljava/lang/String;

    aput-object v4, v3, v7

    const-string v4, "/data/media/gadget/clock/"

    aput-object v4, v3, v8

    const-string v4, "/system/media/gadget/clock/"

    aput-object v4, v3, v9

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    const-string v0, "com.miui.android.resourcebrowser.DOWNLOAD_FOLDER"

    sget-object v3, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->EXTERNAL_ZIP_DIR:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    const-string v0, "com.miui.android.resourcebrowser.CURRENT_USING_PATH"

    invoke-virtual {p0}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->getConfig()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const-string v0, "com.miui.android.resourcebrowser.LOCAL_LIST_ACTIVITY_PACKAGE"

    iget-object v3, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    const-string v0, "com.miui.android.resourcebrowser.LOCAL_LIST_ACTIVITY_CLASS"

    const-class v3, Lcom/android/launcher2/ClockStylePicker;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    const-string v0, "com.miui.android.resourcebrowser.ONLINE_LIST_ACTIVITY_PACKAGE"

    iget-object v3, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const-string v0, "com.miui.android.resourcebrowser.DETAIL_ACTIVITY_PACKAGE"

    iget-object v3, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    const-string v0, "type"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 325
    iget-object v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mRequestCode:I

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 332
    :goto_0
    return-void

    .line 327
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 328
    const-string v1, "com.android.deskclock/.AlarmClock"

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 329
    iget-object v1, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 74
    invoke-super {p0}, Lcom/android/launcher2/gadget/ConfigableGadget;->onCreate()V

    .line 75
    iget v1, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mStatus:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mStatus:I

    .line 76
    invoke-direct {p0}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->setupViews()V

    .line 77
    iget-object v1, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mClock:Lcom/android/launcher2/gadget/Clock;

    invoke-virtual {v1}, Lcom/android/launcher2/gadget/Clock;->init()V

    .line 79
    iget-object v1, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/android/launcher2/gadget/Gadget;

    if-nez v1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->updateActualGadget()V

    .line 83
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Lcom/android/launcher2/gadget/ConfigableGadget;->onDestroy()V

    .line 91
    iget v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mStatus:I

    .line 92
    iget-object v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mClock:Lcom/android/launcher2/gadget/Clock;

    invoke-virtual {v0}, Lcom/android/launcher2/gadget/Clock;->pause()V

    .line 93
    iget-object v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/android/launcher2/gadget/Gadget;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/android/launcher2/gadget/Gadget;

    invoke-interface {v0}, Lcom/android/launcher2/gadget/Gadget;->onDestroy()V

    .line 98
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 366
    invoke-super {p0}, Lcom/android/launcher2/gadget/ConfigableGadget;->onDetachedFromWindow()V

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :goto_0
    return-void

    .line 370
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mStatus:I

    .line 106
    iget-object v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mClock:Lcom/android/launcher2/gadget/Clock;

    invoke-virtual {v0}, Lcom/android/launcher2/gadget/Clock;->pause()V

    .line 107
    iget-object v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/android/launcher2/gadget/Gadget;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/android/launcher2/gadget/Gadget;

    invoke-interface {v0}, Lcom/android/launcher2/gadget/Gadget;->onPause()V

    .line 110
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Lcom/android/launcher2/gadget/ConfigableGadget;->onResume()V

    .line 115
    iget v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mStatus:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mStatus:I

    .line 116
    iget-object v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/android/launcher2/gadget/Gadget;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/android/launcher2/gadget/Gadget;

    invoke-interface {v0}, Lcom/android/launcher2/gadget/Gadget;->onResume()V

    .line 118
    iget-object v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mClock:Lcom/android/launcher2/gadget/Clock;

    invoke-virtual {v0}, Lcom/android/launcher2/gadget/Clock;->resume()V

    .line 120
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mStatus:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mStatus:I

    .line 125
    iget-object v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/android/launcher2/gadget/Gadget;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/android/launcher2/gadget/Gadget;

    invoke-interface {v0}, Lcom/android/launcher2/gadget/Gadget;->onStart()V

    .line 128
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mStatus:I

    .line 133
    iget-object v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mClock:Lcom/android/launcher2/gadget/Clock;

    invoke-virtual {v0}, Lcom/android/launcher2/gadget/Clock;->pause()V

    .line 134
    iget-object v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/android/launcher2/gadget/Gadget;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/android/launcher2/gadget/Gadget;

    invoke-interface {v0}, Lcom/android/launcher2/gadget/Gadget;->onStop()V

    .line 137
    :cond_0
    return-void
.end method

.method updateActualGadget()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 174
    const/4 v7, 0x0

    .line 175
    .local v7, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->getConfig()Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, config:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/launcher2/gadget/Utils;->parseManifestInZip(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 178
    .local v5, root:Lorg/w3c/dom/Element;
    if-eqz v5, :cond_a

    .line 179
    const-string v8, "type"

    invoke-interface {v5, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 180
    .local v6, type:Ljava/lang/String;
    const-string v8, "flip"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 181
    iget-object v8, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    const v9, 0x7f03000f

    invoke-static {v8, v9, v10}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 186
    :goto_0
    iget-object v8, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mErrorDisplay:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 187
    instance-of v8, v7, Lcom/android/launcher2/gadget/Clock$ClockStyle;

    if-eqz v8, :cond_0

    .line 188
    move-object v0, v7

    check-cast v0, Lcom/android/launcher2/gadget/Clock$ClockStyle;

    move-object v8, v0

    invoke-interface {v8, v1}, Lcom/android/launcher2/gadget/Clock$ClockStyle;->initConfig(Ljava/lang/String;)V

    .line 194
    .end local v6           #type:Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/android/launcher2/gadget/Gadget;

    .line 195
    .local v3, old:Lcom/android/launcher2/gadget/Gadget;
    if-eqz v3, :cond_4

    .line 196
    move-object v4, v3

    .line 197
    .local v4, oldGadget:Lcom/android/launcher2/gadget/Gadget;
    iget v8, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_1

    .line 198
    invoke-interface {v4}, Lcom/android/launcher2/gadget/Gadget;->onPause()V

    .line 200
    :cond_1
    iget v8, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_2

    .line 201
    invoke-interface {v4}, Lcom/android/launcher2/gadget/Gadget;->onStop()V

    .line 203
    :cond_2
    iget v8, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_3

    .line 204
    invoke-interface {v4}, Lcom/android/launcher2/gadget/Gadget;->onDestroy()V

    .line 206
    :cond_3
    check-cast v3, Landroid/view/View;

    .end local v3           #old:Lcom/android/launcher2/gadget/Gadget;
    invoke-virtual {p0, v3}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->removeView(Landroid/view/View;)V

    .line 209
    .end local v4           #oldGadget:Lcom/android/launcher2/gadget/Gadget;
    :cond_4
    instance-of v8, v7, Lcom/android/launcher2/gadget/Gadget;

    if-eqz v8, :cond_b

    .line 210
    invoke-virtual {p0, v7}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->addView(Landroid/view/View;)V

    .line 211
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 212
    invoke-direct {p0, v5, v7}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->adjustByAttributes(Lorg/w3c/dom/Element;Landroid/view/View;)V

    .line 213
    iget-object v8, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mEditView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->bringToFront()V

    .line 215
    move-object v0, v7

    check-cast v0, Lcom/android/launcher2/gadget/Gadget;

    move-object v2, v0

    .line 216
    .local v2, newGadget:Lcom/android/launcher2/gadget/Gadget;
    iget v8, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_5

    .line 217
    invoke-interface {v2}, Lcom/android/launcher2/gadget/Gadget;->onCreate()V

    .line 219
    :cond_5
    iget v8, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_6

    .line 220
    invoke-interface {v2}, Lcom/android/launcher2/gadget/Gadget;->onStart()V

    .line 222
    :cond_6
    iget v8, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_7

    .line 223
    invoke-interface {v2}, Lcom/android/launcher2/gadget/Gadget;->onResume()V

    .line 226
    :cond_7
    instance-of v8, v2, Lcom/android/launcher2/gadget/Clock$ClockStyle;

    if-eqz v8, :cond_8

    .line 227
    iget-object v9, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mClock:Lcom/android/launcher2/gadget/Clock;

    move-object v0, v2

    check-cast v0, Lcom/android/launcher2/gadget/Clock$ClockStyle;

    move-object v8, v0

    invoke-virtual {v9, v8}, Lcom/android/launcher2/gadget/Clock;->setClockStyle(Lcom/android/launcher2/gadget/Clock$ClockStyle;)V

    .line 229
    :cond_8
    iput-object v2, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/android/launcher2/gadget/Gadget;

    .line 235
    .end local v2           #newGadget:Lcom/android/launcher2/gadget/Gadget;
    :goto_2
    return-void

    .line 183
    .restart local v6       #type:Ljava/lang/String;
    :cond_9
    new-instance v7, Lcom/android/launcher2/gadget/AwesomeClock;

    .end local v7           #view:Landroid/view/View;
    iget-object v8, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/android/launcher2/gadget/AwesomeClock;-><init>(Landroid/content/Context;)V

    .restart local v7       #view:Landroid/view/View;
    goto/16 :goto_0

    .line 191
    .end local v6           #type:Ljava/lang/String;
    :cond_a
    iget-object v8, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mErrorDisplay:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 231
    :cond_b
    iget-object v8, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mClock:Lcom/android/launcher2/gadget/Clock;

    invoke-virtual {v8, v10}, Lcom/android/launcher2/gadget/Clock;->setClockStyle(Lcom/android/launcher2/gadget/Clock$ClockStyle;)V

    .line 232
    iput-object v10, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/android/launcher2/gadget/Gadget;

    goto :goto_2
.end method

.method public updateConfig(Landroid/os/Bundle;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 141
    const-string v1, "com.miui.android.resourcebrowser.PICKED_RESOURCE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, newResource:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->saveConfig(Ljava/lang/String;)Z

    .line 143
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->updateActualGadget()V

    .line 144
    return-void
.end method
