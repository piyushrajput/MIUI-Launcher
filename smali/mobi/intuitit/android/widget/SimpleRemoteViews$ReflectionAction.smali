.class public Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;
.super Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;
.source "SimpleRemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/intuitit/android/widget/SimpleRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ReflectionAction"
.end annotation


# static fields
.field static final BITMAP:I = 0xc

.field static final BOOLEAN:I = 0x1

.field static final BUNDLE:I = 0xd

.field static final BYTE:I = 0x2

.field static final CHAR:I = 0x8

.field static final CHAR_SEQUENCE:I = 0xa

.field static final DOUBLE:I = 0x7

.field static final FLOAT:I = 0x6

.field static final INT:I = 0x4

.field static final LONG:I = 0x5

.field static final SHORT:I = 0x3

.field static final STRING:I = 0x9

.field static final TAG:I = 0x2

.field static final URI:I = 0xb


# instance fields
.field methodName:Ljava/lang/String;

.field final synthetic this$0:Lmobi/intuitit/android/widget/SimpleRemoteViews;

.field type:I

.field value:Ljava/lang/Object;

.field viewId:I


# direct methods
.method protected constructor <init>(Lmobi/intuitit/android/widget/SimpleRemoteViews;ILjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "viewId"
    .parameter "methodName"
    .parameter "type"

    .prologue
    .line 312
    iput-object p1, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->this$0:Lmobi/intuitit/android/widget/SimpleRemoteViews;

    invoke-direct {p0}, Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;-><init>()V

    .line 313
    iput p2, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->viewId:I

    .line 314
    iput-object p3, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->methodName:Ljava/lang/String;

    .line 315
    iput p4, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->type:I

    .line 316
    return-void
.end method

.method constructor <init>(Lmobi/intuitit/android/widget/SimpleRemoteViews;ILjava/lang/String;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "viewId"
    .parameter "methodName"
    .parameter "type"
    .parameter "value"

    .prologue
    .line 308
    invoke-direct {p0, p1, p2, p3, p4}, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;-><init>(Lmobi/intuitit/android/widget/SimpleRemoteViews;ILjava/lang/String;I)V

    .line 309
    iput-object p5, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .line 310
    return-void
.end method

.method constructor <init>(Lmobi/intuitit/android/widget/SimpleRemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .parameter
    .parameter "in"

    .prologue
    .line 318
    iput-object p1, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->this$0:Lmobi/intuitit/android/widget/SimpleRemoteViews;

    invoke-direct {p0}, Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;-><init>()V

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->viewId:I

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->methodName:Ljava/lang/String;

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->type:I

    .line 322
    invoke-virtual {p0, p2}, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->readValue(Landroid/os/Parcel;)V

    .line 323
    return-void
.end method

.method private getParameterType()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 431
    iget v0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->type:I

    packed-switch v0, :pswitch_data_0

    .line 459
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 433
    :pswitch_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 435
    :pswitch_1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 437
    :pswitch_2
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 439
    :pswitch_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 441
    :pswitch_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 443
    :pswitch_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 445
    :pswitch_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 447
    :pswitch_7
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 449
    :pswitch_8
    const-class v0, Ljava/lang/String;

    goto :goto_0

    .line 451
    :pswitch_9
    const-class v0, Ljava/lang/CharSequence;

    goto :goto_0

    .line 453
    :pswitch_a
    const-class v0, Landroid/net/Uri;

    goto :goto_0

    .line 455
    :pswitch_b
    const-class v0, Landroid/graphics/Bitmap;

    goto :goto_0

    .line 457
    :pswitch_c
    const-class v0, Landroid/os/Bundle;

    goto :goto_0

    .line 431
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method public apply(Landroid/view/View;)V
    .locals 9
    .parameter "root"

    .prologue
    .line 466
    iget v5, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->viewId:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 467
    .local v4, view:Landroid/view/View;
    if-nez v4, :cond_0

    .line 468
    new-instance v5, Lmobi/intuitit/android/widget/SimpleRemoteViews$ActionException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "can\'t find view: 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->viewId:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lmobi/intuitit/android/widget/SimpleRemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 471
    :cond_0
    invoke-direct {p0}, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->getParameterType()Ljava/lang/Class;

    move-result-object v3

    .line 472
    .local v3, param:Ljava/lang/Class;
    if-nez v3, :cond_1

    .line 473
    new-instance v5, Lmobi/intuitit/android/widget/SimpleRemoteViews$ActionException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bad type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lmobi/intuitit/android/widget/SimpleRemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 476
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 479
    .local v1, klass:Ljava/lang/Class;
    :try_start_0
    iget-object v5, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->methodName:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    invoke-direct {p0}, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->getParameterType()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 487
    .local v2, method:Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    :try_start_1
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p0, v7}, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->getValue(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 492
    return-void

    .line 481
    .end local v2           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 482
    .local v0, ex:Ljava/lang/NoSuchMethodException;
    new-instance v5, Lmobi/intuitit/android/widget/SimpleRemoteViews$ActionException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "view: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " doesn\'t have method: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->methodName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lmobi/intuitit/android/widget/SimpleRemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 489
    .end local v0           #ex:Ljava/lang/NoSuchMethodException;
    .restart local v2       #method:Ljava/lang/reflect/Method;
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 490
    .local v0, ex:Ljava/lang/Exception;
    new-instance v5, Lmobi/intuitit/android/widget/SimpleRemoteViews$ActionException;

    invoke-direct {v5, v0}, Lmobi/intuitit/android/widget/SimpleRemoteViews$ActionException;-><init>(Ljava/lang/Exception;)V

    throw v5
.end method

.method protected getTag()I
    .locals 1

    .prologue
    .line 380
    const/4 v0, 0x2

    return v0
.end method

.method protected getValue(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .parameter "context"

    .prologue
    .line 495
    iget-object v0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    return-object v0
.end method

.method protected readValue(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 326
    iget v0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->type:I

    packed-switch v0, :pswitch_data_0

    .line 369
    :goto_0
    return-void

    .line 328
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 331
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iput-object v0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    goto :goto_0

    .line 334
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    iput-object v0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    goto :goto_0

    .line 337
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    goto :goto_0

    .line 340
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    goto :goto_0

    .line 343
    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    goto :goto_0

    .line 346
    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    goto :goto_0

    .line 349
    :pswitch_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    iput-object v0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    goto :goto_0

    .line 352
    :pswitch_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    goto :goto_0

    .line 355
    :pswitch_9
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    goto :goto_0

    .line 358
    :pswitch_a
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    goto :goto_0

    .line 361
    :pswitch_b
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 364
    :pswitch_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 326
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 372
    invoke-virtual {p0}, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->getTag()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    iget v0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    iget-object v0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->methodName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 375
    iget v0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    invoke-virtual {p0, p1, p2}, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->writeValue(Landroid/os/Parcel;I)V

    .line 377
    return-void
.end method

.method protected writeValue(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 384
    iget v0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->type:I

    packed-switch v0, :pswitch_data_0

    .line 427
    .end local p0
    :goto_0
    return-void

    .line 386
    .restart local p0
    :pswitch_0
    iget-object p0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 389
    .restart local p0
    :pswitch_1
    iget-object p0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 392
    .restart local p0
    :pswitch_2
    iget-object p0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 395
    .restart local p0
    :pswitch_3
    iget-object p0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 398
    .restart local p0
    :pswitch_4
    iget-object p0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 401
    .restart local p0
    :pswitch_5
    iget-object p0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_0

    .line 404
    .restart local p0
    :pswitch_6
    iget-object p0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_0

    .line 407
    .restart local p0
    :pswitch_7
    iget-object p0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 410
    .restart local p0
    :pswitch_8
    iget-object p0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 413
    .restart local p0
    :pswitch_9
    iget-object p0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 416
    .restart local p0
    :pswitch_a
    iget-object p0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 419
    .restart local p0
    :pswitch_b
    iget-object p0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 422
    .restart local p0
    :pswitch_c
    iget-object p0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 384
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
