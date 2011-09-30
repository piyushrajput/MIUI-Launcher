.class public Lmobi/intuitit/android/widget/BoundRemoteViews;
.super Lmobi/intuitit/android/widget/SimpleRemoteViews;
.source "BoundRemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;,
        Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;,
        Lmobi/intuitit/android/widget/BoundRemoteViews$CursorCache;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmobi/intuitit/android/widget/BoundRemoteViews;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCursor:Lmobi/intuitit/android/widget/BoundRemoteViews$CursorCache;

.field private mCursorPos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 389
    new-instance v0, Lmobi/intuitit/android/widget/BoundRemoteViews$1;

    invoke-direct {v0}, Lmobi/intuitit/android/widget/BoundRemoteViews$1;-><init>()V

    sput-object v0, Lmobi/intuitit/android/widget/BoundRemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "layoutId"

    .prologue
    .line 275
    invoke-direct {p0, p1}, Lmobi/intuitit/android/widget/SimpleRemoteViews;-><init>(I)V

    .line 276
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "parcel"

    .prologue
    .line 271
    invoke-direct {p0, p1}, Lmobi/intuitit/android/widget/SimpleRemoteViews;-><init>(Landroid/os/Parcel;)V

    .line 272
    return-void
.end method

.method static synthetic access$000(Lmobi/intuitit/android/widget/BoundRemoteViews;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lmobi/intuitit/android/widget/BoundRemoteViews;->mCursorPos:I

    return v0
.end method

.method static synthetic access$100(Lmobi/intuitit/android/widget/BoundRemoteViews;)Lmobi/intuitit/android/widget/BoundRemoteViews$CursorCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lmobi/intuitit/android/widget/BoundRemoteViews;->mCursor:Lmobi/intuitit/android/widget/BoundRemoteViews$CursorCache;

    return-object v0
.end method


# virtual methods
.method public SetBoundOnClickIntent(ILandroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 6
    .parameter "viewId"
    .parameter "intent"
    .parameter "extraName"
    .parameter "extraCursorIndex"

    .prologue
    .line 383
    new-instance v0, Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;-><init>(Lmobi/intuitit/android/widget/BoundRemoteViews;ILandroid/app/PendingIntent;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lmobi/intuitit/android/widget/BoundRemoteViews;->addAction(Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;)V

    .line 384
    return-void
.end method

.method public dropCache()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lmobi/intuitit/android/widget/BoundRemoteViews;->mCursor:Lmobi/intuitit/android/widget/BoundRemoteViews$CursorCache;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lmobi/intuitit/android/widget/BoundRemoteViews;->mCursor:Lmobi/intuitit/android/widget/BoundRemoteViews$CursorCache;

    invoke-virtual {v0}, Lmobi/intuitit/android/widget/BoundRemoteViews$CursorCache;->clear()V

    .line 286
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/intuitit/android/widget/BoundRemoteViews;->mCursor:Lmobi/intuitit/android/widget/BoundRemoteViews$CursorCache;

    .line 287
    return-void
.end method

.method public getCursorCacheSize()I
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lmobi/intuitit/android/widget/BoundRemoteViews;->mCursor:Lmobi/intuitit/android/widget/BoundRemoteViews$CursorCache;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lmobi/intuitit/android/widget/BoundRemoteViews;->mCursor:Lmobi/intuitit/android/widget/BoundRemoteViews$CursorCache;

    iget-object v0, v0, Lmobi/intuitit/android/widget/BoundRemoteViews$CursorCache;->mCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 293
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadActionFromParcel(ILandroid/os/Parcel;)Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;
    .locals 1
    .parameter "tag"
    .parameter "parcel"

    .prologue
    .line 302
    const/16 v0, 0x63

    if-ne p1, v0, :cond_0

    .line 303
    new-instance v0, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;

    invoke-direct {v0, p0, p2}, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;-><init>(Lmobi/intuitit/android/widget/BoundRemoteViews;Landroid/os/Parcel;)V

    .line 307
    :goto_0
    return-object v0

    .line 304
    :cond_0
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    .line 305
    new-instance v0, Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;

    invoke-direct {v0, p0, p2}, Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;-><init>(Lmobi/intuitit/android/widget/BoundRemoteViews;Landroid/os/Parcel;)V

    goto :goto_0

    .line 307
    :cond_1
    invoke-super {p0, p1, p2}, Lmobi/intuitit/android/widget/SimpleRemoteViews;->loadActionFromParcel(ILandroid/os/Parcel;)Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;

    move-result-object v0

    goto :goto_0
.end method

.method public moveCursor(I)V
    .locals 0
    .parameter "newPosition"

    .prologue
    .line 297
    iput p1, p0, Lmobi/intuitit/android/widget/BoundRemoteViews;->mCursorPos:I

    .line 298
    return-void
.end method

.method public reapplyBinding(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 313
    :try_start_0
    iget-object v4, p0, Lmobi/intuitit/android/widget/BoundRemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 314
    iget-object v4, p0, Lmobi/intuitit/android/widget/BoundRemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 315
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 316
    iget-object v4, p0, Lmobi/intuitit/android/widget/BoundRemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;

    .line 317
    .local v0, a:Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;
    instance-of v4, v0, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;

    if-nez v4, :cond_0

    instance-of v4, v0, Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;

    if-eqz v4, :cond_1

    .line 318
    :cond_0
    invoke-virtual {v0, p1}, Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;->apply(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 321
    .end local v0           #a:Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;
    .end local v1           #count:I
    .end local v3           #i:I
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 322
    .local v2, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 324
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :cond_2
    return-void
.end method

.method public setBindingCursor(Landroid/database/Cursor;Landroid/content/Context;)V
    .locals 1
    .parameter "cursor"
    .parameter "context"

    .prologue
    .line 279
    new-instance v0, Lmobi/intuitit/android/widget/BoundRemoteViews$CursorCache;

    invoke-direct {v0, p0, p1, p2}, Lmobi/intuitit/android/widget/BoundRemoteViews$CursorCache;-><init>(Lmobi/intuitit/android/widget/BoundRemoteViews;Landroid/database/Cursor;Landroid/content/Context;)V

    iput-object v0, p0, Lmobi/intuitit/android/widget/BoundRemoteViews;->mCursor:Lmobi/intuitit/android/widget/BoundRemoteViews$CursorCache;

    .line 280
    return-void
.end method

.method public setBoundBitmap(ILjava/lang/String;II)V
    .locals 7
    .parameter "viewId"
    .parameter "methodName"
    .parameter "cursorIndex"
    .parameter "defaultResource"

    .prologue
    .line 377
    new-instance v0, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;

    const/16 v4, 0xc

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;-><init>(Lmobi/intuitit/android/widget/BoundRemoteViews;ILjava/lang/String;III)V

    invoke-virtual {p0, v0}, Lmobi/intuitit/android/widget/BoundRemoteViews;->addAction(Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;)V

    .line 379
    return-void
.end method

.method public setBoundByte(ILjava/lang/String;I)V
    .locals 7
    .parameter "viewId"
    .parameter "methodName"
    .parameter "cursorIndex"

    .prologue
    .line 337
    new-instance v0, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;

    const/4 v4, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;-><init>(Lmobi/intuitit/android/widget/BoundRemoteViews;ILjava/lang/String;III)V

    invoke-virtual {p0, v0}, Lmobi/intuitit/android/widget/BoundRemoteViews;->addAction(Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;)V

    .line 339
    return-void
.end method

.method public setBoundChar(ILjava/lang/String;I)V
    .locals 7
    .parameter "viewId"
    .parameter "methodName"
    .parameter "cursorIndex"

    .prologue
    .line 367
    new-instance v0, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;

    const/16 v4, 0x8

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;-><init>(Lmobi/intuitit/android/widget/BoundRemoteViews;ILjava/lang/String;III)V

    invoke-virtual {p0, v0}, Lmobi/intuitit/android/widget/BoundRemoteViews;->addAction(Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;)V

    .line 369
    return-void
.end method

.method public setBoundCharSequence(ILjava/lang/String;II)V
    .locals 7
    .parameter "viewId"
    .parameter "methodName"
    .parameter "cursorIndex"
    .parameter "defaultResource"

    .prologue
    .line 332
    new-instance v0, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;

    const/16 v4, 0xa

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;-><init>(Lmobi/intuitit/android/widget/BoundRemoteViews;ILjava/lang/String;III)V

    invoke-virtual {p0, v0}, Lmobi/intuitit/android/widget/BoundRemoteViews;->addAction(Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;)V

    .line 334
    return-void
.end method

.method public setBoundDouble(ILjava/lang/String;I)V
    .locals 7
    .parameter "viewId"
    .parameter "methodName"
    .parameter "cursorIndex"

    .prologue
    .line 362
    new-instance v0, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;

    const/4 v4, 0x7

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;-><init>(Lmobi/intuitit/android/widget/BoundRemoteViews;ILjava/lang/String;III)V

    invoke-virtual {p0, v0}, Lmobi/intuitit/android/widget/BoundRemoteViews;->addAction(Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;)V

    .line 364
    return-void
.end method

.method public setBoundFloat(ILjava/lang/String;I)V
    .locals 7
    .parameter "viewId"
    .parameter "methodName"
    .parameter "cursorIndex"

    .prologue
    .line 357
    new-instance v0, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;

    const/4 v4, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;-><init>(Lmobi/intuitit/android/widget/BoundRemoteViews;ILjava/lang/String;III)V

    invoke-virtual {p0, v0}, Lmobi/intuitit/android/widget/BoundRemoteViews;->addAction(Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;)V

    .line 359
    return-void
.end method

.method public setBoundInt(ILjava/lang/String;I)V
    .locals 7
    .parameter "viewId"
    .parameter "methodName"
    .parameter "cursorIndex"

    .prologue
    .line 347
    new-instance v0, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;

    const/4 v4, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;-><init>(Lmobi/intuitit/android/widget/BoundRemoteViews;ILjava/lang/String;III)V

    invoke-virtual {p0, v0}, Lmobi/intuitit/android/widget/BoundRemoteViews;->addAction(Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;)V

    .line 349
    return-void
.end method

.method public setBoundLong(ILjava/lang/String;I)V
    .locals 7
    .parameter "viewId"
    .parameter "methodName"
    .parameter "cursorIndex"

    .prologue
    .line 352
    new-instance v0, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;

    const/4 v4, 0x5

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;-><init>(Lmobi/intuitit/android/widget/BoundRemoteViews;ILjava/lang/String;III)V

    invoke-virtual {p0, v0}, Lmobi/intuitit/android/widget/BoundRemoteViews;->addAction(Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;)V

    .line 354
    return-void
.end method

.method public setBoundShort(ILjava/lang/String;I)V
    .locals 7
    .parameter "viewId"
    .parameter "methodName"
    .parameter "cursorIndex"

    .prologue
    .line 342
    new-instance v0, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;

    const/4 v4, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;-><init>(Lmobi/intuitit/android/widget/BoundRemoteViews;ILjava/lang/String;III)V

    invoke-virtual {p0, v0}, Lmobi/intuitit/android/widget/BoundRemoteViews;->addAction(Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;)V

    .line 344
    return-void
.end method

.method public setBoundString(ILjava/lang/String;II)V
    .locals 7
    .parameter "viewId"
    .parameter "methodName"
    .parameter "cursorIndex"
    .parameter "defaultResource"

    .prologue
    .line 327
    new-instance v0, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;

    const/16 v4, 0x9

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;-><init>(Lmobi/intuitit/android/widget/BoundRemoteViews;ILjava/lang/String;III)V

    invoke-virtual {p0, v0}, Lmobi/intuitit/android/widget/BoundRemoteViews;->addAction(Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;)V

    .line 329
    return-void
.end method

.method public setBoundUri(ILjava/lang/String;I)V
    .locals 7
    .parameter "viewId"
    .parameter "methodName"
    .parameter "cursorIndex"

    .prologue
    .line 372
    new-instance v0, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;

    const/16 v4, 0xb

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;-><init>(Lmobi/intuitit/android/widget/BoundRemoteViews;ILjava/lang/String;III)V

    invoke-virtual {p0, v0}, Lmobi/intuitit/android/widget/BoundRemoteViews;->addAction(Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;)V

    .line 374
    return-void
.end method
