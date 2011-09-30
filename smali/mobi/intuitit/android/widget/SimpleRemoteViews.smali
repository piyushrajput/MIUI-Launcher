.class public Lmobi/intuitit/android/widget/SimpleRemoteViews;
.super Ljava/lang/Object;
.source "SimpleRemoteViews.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;,
        Lmobi/intuitit/android/widget/SimpleRemoteViews$SetOnClickPendingIntent;,
        Lmobi/intuitit/android/widget/SimpleRemoteViews$SetDrawableParameters;,
        Lmobi/intuitit/android/widget/SimpleRemoteViews$SetLayoutSize;,
        Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;,
        Lmobi/intuitit/android/widget/SimpleRemoteViews$ActionException;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmobi/intuitit/android/widget/SimpleRemoteViews;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 934
    new-instance v0, Lmobi/intuitit/android/widget/SimpleRemoteViews$1;

    invoke-direct {v0}, Lmobi/intuitit/android/widget/SimpleRemoteViews$1;-><init>()V

    sput-object v0, Lmobi/intuitit/android/widget/SimpleRemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "layoutId"

    .prologue
    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    iput p1, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews;->mLayoutId:I

    .line 508
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .parameter "parcel"

    .prologue
    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews;->mLayoutId:I

    .line 517
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 518
    .local v1, count:I
    if-lez v1, :cond_1

    .line 519
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews;->mActions:Ljava/util/ArrayList;

    .line 520
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 521
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 522
    .local v3, tag:I
    invoke-virtual {p0, v3, p1}, Lmobi/intuitit/android/widget/SimpleRemoteViews;->loadActionFromParcel(ILandroid/os/Parcel;)Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;

    move-result-object v0

    .line 523
    .local v0, act:Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;
    if-eqz v0, :cond_0

    .line 524
    iget-object v4, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 526
    :cond_0
    new-instance v4, Lmobi/intuitit/android/widget/SimpleRemoteViews$ActionException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lmobi/intuitit/android/widget/SimpleRemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 529
    .end local v0           #act:Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;
    .end local v2           #i:I
    .end local v3           #tag:I
    :cond_1
    return-void
.end method

.method private performApply(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 899
    :try_start_0
    iget-object v4, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 900
    iget-object v4, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 901
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 902
    iget-object v4, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;

    .line 903
    .local v0, a:Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;
    invoke-virtual {v0, p1}, Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;->apply(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 901
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 906
    .end local v0           #a:Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;
    .end local v1           #count:I
    .end local v3           #i:I
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 907
    .local v2, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 909
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :cond_0
    return-void
.end method


# virtual methods
.method protected addAction(Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;)V
    .locals 1
    .parameter "a"

    .prologue
    .line 556
    iget-object v0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews;->mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 557
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews;->mActions:Ljava/util/ArrayList;

    .line 559
    :cond_0
    iget-object v0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    return-void
.end method

.method public apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "parent"

    .prologue
    .line 877
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 878
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v2, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews;->mLayoutId:I

    invoke-virtual {v0, v2, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 879
    .local v1, result:Landroid/view/View;
    invoke-direct {p0, v1}, Lmobi/intuitit/android/widget/SimpleRemoteViews;->performApply(Landroid/view/View;)V

    .line 881
    return-object v1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 913
    const/4 v0, 0x0

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 547
    iget v0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews;->mLayoutId:I

    return v0
.end method

.method protected loadActionFromParcel(ILandroid/os/Parcel;)Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;
    .locals 1
    .parameter "tag"
    .parameter "parcel"

    .prologue
    .line 532
    packed-switch p1, :pswitch_data_0

    .line 542
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 534
    :pswitch_1
    new-instance v0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetLayoutSize;

    invoke-direct {v0, p0, p2}, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetLayoutSize;-><init>(Lmobi/intuitit/android/widget/SimpleRemoteViews;Landroid/os/Parcel;)V

    goto :goto_0

    .line 536
    :pswitch_2
    new-instance v0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetOnClickPendingIntent;

    invoke-direct {v0, p0, p2}, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetOnClickPendingIntent;-><init>(Lmobi/intuitit/android/widget/SimpleRemoteViews;Landroid/os/Parcel;)V

    goto :goto_0

    .line 538
    :pswitch_3
    new-instance v0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetDrawableParameters;

    invoke-direct {v0, p0, p2}, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetDrawableParameters;-><init>(Lmobi/intuitit/android/widget/SimpleRemoteViews;Landroid/os/Parcel;)V

    goto :goto_0

    .line 540
    :pswitch_4
    new-instance v0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;

    invoke-direct {v0, p0, p2}, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;-><init>(Lmobi/intuitit/android/widget/SimpleRemoteViews;Landroid/os/Parcel;)V

    goto :goto_0

    .line 532
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reapply(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 893
    invoke-direct {p0, p1}, Lmobi/intuitit/android/widget/SimpleRemoteViews;->performApply(Landroid/view/View;)V

    .line 894
    return-void
.end method

.method public setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 841
    new-instance v0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;

    const/16 v4, 0xc

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;-><init>(Lmobi/intuitit/android/widget/SimpleRemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lmobi/intuitit/android/widget/SimpleRemoteViews;->addAction(Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;)V

    .line 842
    return-void
.end method

.method public setBoolean(ILjava/lang/String;Z)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 717
    new-instance v0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;-><init>(Lmobi/intuitit/android/widget/SimpleRemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lmobi/intuitit/android/widget/SimpleRemoteViews;->addAction(Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;)V

    .line 718
    return-void
.end method

.method public setBundle(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 852
    new-instance v0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;

    const/16 v4, 0xd

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;-><init>(Lmobi/intuitit/android/widget/SimpleRemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lmobi/intuitit/android/widget/SimpleRemoteViews;->addAction(Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;)V

    .line 853
    return-void
.end method

.method public setByte(ILjava/lang/String;B)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 728
    new-instance v0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;-><init>(Lmobi/intuitit/android/widget/SimpleRemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lmobi/intuitit/android/widget/SimpleRemoteViews;->addAction(Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;)V

    .line 729
    return-void
.end method

.method public setChar(ILjava/lang/String;C)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 794
    new-instance v0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;

    const/16 v4, 0x8

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;-><init>(Lmobi/intuitit/android/widget/SimpleRemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lmobi/intuitit/android/widget/SimpleRemoteViews;->addAction(Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;)V

    .line 795
    return-void
.end method

.method public setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 816
    new-instance v0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;

    const/16 v4, 0xa

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;-><init>(Lmobi/intuitit/android/widget/SimpleRemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lmobi/intuitit/android/widget/SimpleRemoteViews;->addAction(Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;)V

    .line 817
    return-void
.end method

.method public setChronometer(IJLjava/lang/String;Z)V
    .locals 1
    .parameter "viewId"
    .parameter "base"
    .parameter "format"
    .parameter "started"

    .prologue
    .line 627
    const-string v0, "setBase"

    invoke-virtual {p0, p1, v0, p2, p3}, Lmobi/intuitit/android/widget/SimpleRemoteViews;->setLong(ILjava/lang/String;J)V

    .line 628
    const-string v0, "setFormat"

    invoke-virtual {p0, p1, v0, p4}, Lmobi/intuitit/android/widget/SimpleRemoteViews;->setString(ILjava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string v0, "setStarted"

    invoke-virtual {p0, p1, v0, p5}, Lmobi/intuitit/android/widget/SimpleRemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 630
    return-void
.end method

.method public setDouble(ILjava/lang/String;D)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 783
    new-instance v0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;

    const/4 v4, 0x7

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;-><init>(Lmobi/intuitit/android/widget/SimpleRemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lmobi/intuitit/android/widget/SimpleRemoteViews;->addAction(Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;)V

    .line 784
    return-void
.end method

.method public setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V
    .locals 8
    .parameter "viewId"
    .parameter "targetBackground"
    .parameter "alpha"
    .parameter "colorFilter"
    .parameter "mode"
    .parameter "level"

    .prologue
    .line 694
    new-instance v0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetDrawableParameters;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetDrawableParameters;-><init>(Lmobi/intuitit/android/widget/SimpleRemoteViews;IZIILandroid/graphics/PorterDuff$Mode;I)V

    invoke-virtual {p0, v0}, Lmobi/intuitit/android/widget/SimpleRemoteViews;->addAction(Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;)V

    .line 696
    return-void
.end method

.method public setFloat(ILjava/lang/String;F)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 772
    new-instance v0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;

    const/4 v4, 0x6

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;-><init>(Lmobi/intuitit/android/widget/SimpleRemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lmobi/intuitit/android/widget/SimpleRemoteViews;->addAction(Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;)V

    .line 773
    return-void
.end method

.method public setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    .locals 1
    .parameter "viewId"
    .parameter "bitmap"

    .prologue
    .line 609
    const-string v0, "setImageBitmap"

    invoke-virtual {p0, p1, v0, p2}, Lmobi/intuitit/android/widget/SimpleRemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 610
    return-void
.end method

.method public setImageViewResource(II)V
    .locals 1
    .parameter "viewId"
    .parameter "srcId"

    .prologue
    .line 589
    const-string v0, "setImageResource"

    invoke-virtual {p0, p1, v0, p2}, Lmobi/intuitit/android/widget/SimpleRemoteViews;->setInt(ILjava/lang/String;I)V

    .line 590
    return-void
.end method

.method public setImageViewUri(ILandroid/net/Uri;)V
    .locals 1
    .parameter "viewId"
    .parameter "uri"

    .prologue
    .line 599
    const-string v0, "setImageURI"

    invoke-virtual {p0, p1, v0, p2}, Lmobi/intuitit/android/widget/SimpleRemoteViews;->setUri(ILjava/lang/String;Landroid/net/Uri;)V

    .line 600
    return-void
.end method

.method public setInt(ILjava/lang/String;I)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 750
    new-instance v0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;

    const/4 v4, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;-><init>(Lmobi/intuitit/android/widget/SimpleRemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lmobi/intuitit/android/widget/SimpleRemoteViews;->addAction(Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;)V

    .line 751
    return-void
.end method

.method public setLong(ILjava/lang/String;J)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 761
    new-instance v0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;

    const/4 v4, 0x5

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;-><init>(Lmobi/intuitit/android/widget/SimpleRemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lmobi/intuitit/android/widget/SimpleRemoteViews;->addAction(Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;)V

    .line 762
    return-void
.end method

.method public setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    .locals 1
    .parameter "viewId"
    .parameter "pendingIntent"

    .prologue
    .line 663
    new-instance v0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetOnClickPendingIntent;

    invoke-direct {v0, p0, p1, p2}, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetOnClickPendingIntent;-><init>(Lmobi/intuitit/android/widget/SimpleRemoteViews;ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Lmobi/intuitit/android/widget/SimpleRemoteViews;->addAction(Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;)V

    .line 664
    return-void
.end method

.method public setProgressBar(IIIZ)V
    .locals 1
    .parameter "viewId"
    .parameter "max"
    .parameter "progress"
    .parameter "indeterminate"

    .prologue
    .line 647
    const-string v0, "setIndeterminate"

    invoke-virtual {p0, p1, v0, p4}, Lmobi/intuitit/android/widget/SimpleRemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 648
    if-nez p4, :cond_0

    .line 649
    const-string v0, "setMax"

    invoke-virtual {p0, p1, v0, p2}, Lmobi/intuitit/android/widget/SimpleRemoteViews;->setInt(ILjava/lang/String;I)V

    .line 650
    const-string v0, "setProgress"

    invoke-virtual {p0, p1, v0, p3}, Lmobi/intuitit/android/widget/SimpleRemoteViews;->setInt(ILjava/lang/String;I)V

    .line 652
    :cond_0
    return-void
.end method

.method public setShort(ILjava/lang/String;S)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 739
    new-instance v0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;

    const/4 v4, 0x3

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;-><init>(Lmobi/intuitit/android/widget/SimpleRemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lmobi/intuitit/android/widget/SimpleRemoteViews;->addAction(Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;)V

    .line 740
    return-void
.end method

.method public setString(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 805
    new-instance v0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;

    const/16 v4, 0x9

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;-><init>(Lmobi/intuitit/android/widget/SimpleRemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lmobi/intuitit/android/widget/SimpleRemoteViews;->addAction(Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;)V

    .line 806
    return-void
.end method

.method public setTextColor(II)V
    .locals 1
    .parameter "viewId"
    .parameter "color"

    .prologue
    .line 706
    const-string v0, "setTextColor"

    invoke-virtual {p0, p1, v0, p2}, Lmobi/intuitit/android/widget/SimpleRemoteViews;->setInt(ILjava/lang/String;I)V

    .line 707
    return-void
.end method

.method public setTextViewText(ILjava/lang/CharSequence;)V
    .locals 1
    .parameter "viewId"
    .parameter "text"

    .prologue
    .line 579
    const-string v0, "setText"

    invoke-virtual {p0, p1, v0, p2}, Lmobi/intuitit/android/widget/SimpleRemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 580
    return-void
.end method

.method public setUri(ILjava/lang/String;Landroid/net/Uri;)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    .line 827
    new-instance v0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;

    const/16 v4, 0xb

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;-><init>(Lmobi/intuitit/android/widget/SimpleRemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lmobi/intuitit/android/widget/SimpleRemoteViews;->addAction(Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;)V

    .line 828
    return-void
.end method

.method public setViewHeight(II)V
    .locals 2
    .parameter "viewId"
    .parameter "value"

    .prologue
    .line 860
    new-instance v0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetLayoutSize;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1, p2}, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetLayoutSize;-><init>(Lmobi/intuitit/android/widget/SimpleRemoteViews;III)V

    invoke-virtual {p0, v0}, Lmobi/intuitit/android/widget/SimpleRemoteViews;->addAction(Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;)V

    .line 861
    return-void
.end method

.method public setViewVisibility(II)V
    .locals 1
    .parameter "viewId"
    .parameter "visibility"

    .prologue
    .line 569
    const-string v0, "setVisibility"

    invoke-virtual {p0, p1, v0, p2}, Lmobi/intuitit/android/widget/SimpleRemoteViews;->setInt(ILjava/lang/String;I)V

    .line 570
    return-void
.end method

.method public setViewWidth(II)V
    .locals 2
    .parameter "viewId"
    .parameter "value"

    .prologue
    .line 856
    new-instance v0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetLayoutSize;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1, p2}, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetLayoutSize;-><init>(Lmobi/intuitit/android/widget/SimpleRemoteViews;III)V

    invoke-virtual {p0, v0}, Lmobi/intuitit/android/widget/SimpleRemoteViews;->addAction(Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;)V

    .line 857
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 917
    iget v3, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews;->mLayoutId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 919
    iget-object v3, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 920
    iget-object v3, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 924
    .local v1, count:I
    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 925
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 926
    iget-object v3, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;

    .line 927
    .local v0, a:Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;->writeToParcel(Landroid/os/Parcel;I)V

    .line 925
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 922
    .end local v0           #a:Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #count:I
    goto :goto_0

    .line 929
    .restart local v2       #i:I
    :cond_1
    return-void
.end method
