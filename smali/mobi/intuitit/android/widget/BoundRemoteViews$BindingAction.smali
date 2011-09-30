.class public Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;
.super Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;
.source "BoundRemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/intuitit/android/widget/BoundRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BindingAction"
.end annotation


# static fields
.field public static final tag:I = 0x63


# instance fields
.field private mCursorIndex:I

.field private mDefaultResource:I

.field final synthetic this$0:Lmobi/intuitit/android/widget/BoundRemoteViews;


# direct methods
.method public constructor <init>(Lmobi/intuitit/android/widget/BoundRemoteViews;ILjava/lang/String;III)V
    .locals 0
    .parameter
    .parameter "viewId"
    .parameter "methodName"
    .parameter "type"
    .parameter "cursorIndex"
    .parameter "defaultResource"

    .prologue
    .line 100
    iput-object p1, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;->this$0:Lmobi/intuitit/android/widget/BoundRemoteViews;

    .line 101
    invoke-direct {p0, p1, p2, p3, p4}, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;-><init>(Lmobi/intuitit/android/widget/SimpleRemoteViews;ILjava/lang/String;I)V

    .line 102
    iput p5, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;->mCursorIndex:I

    .line 103
    iput p6, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;->mDefaultResource:I

    .line 104
    return-void
.end method

.method public constructor <init>(Lmobi/intuitit/android/widget/BoundRemoteViews;Landroid/os/Parcel;)V
    .locals 0
    .parameter
    .parameter "in"

    .prologue
    .line 106
    iput-object p1, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;->this$0:Lmobi/intuitit/android/widget/BoundRemoteViews;

    .line 107
    invoke-direct {p0, p1, p2}, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;-><init>(Lmobi/intuitit/android/widget/SimpleRemoteViews;Landroid/os/Parcel;)V

    .line 108
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;)V
    .locals 0
    .parameter "root"

    .prologue
    .line 185
    invoke-super {p0, p1}, Lmobi/intuitit/android/widget/SimpleRemoteViews$ReflectionAction;->apply(Landroid/view/View;)V

    .line 186
    return-void
.end method

.method public getDefault(Landroid/content/Context;)Ljava/lang/Object;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 169
    :try_start_0
    iget v1, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;->type:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move-object v1, v3

    .line 180
    :goto_0
    return-object v1

    .line 172
    :pswitch_1
    iget v1, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;->mDefaultResource:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 174
    :pswitch_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;->mDefaultResource:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 177
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    move-object v1, v3

    .line 178
    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected getTag()I
    .locals 1

    .prologue
    .line 112
    const/16 v0, 0x63

    return v0
.end method

.method protected getValue(Landroid/content/Context;)Ljava/lang/Object;
    .locals 2
    .parameter "context"

    .prologue
    .line 129
    iget-object v0, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;->this$0:Lmobi/intuitit/android/widget/BoundRemoteViews;

    invoke-static {v0}, Lmobi/intuitit/android/widget/BoundRemoteViews;->access$100(Lmobi/intuitit/android/widget/BoundRemoteViews;)Lmobi/intuitit/android/widget/BoundRemoteViews$CursorCache;

    move-result-object v0

    iget-object v1, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;->this$0:Lmobi/intuitit/android/widget/BoundRemoteViews;

    invoke-static {v1}, Lmobi/intuitit/android/widget/BoundRemoteViews;->access$000(Lmobi/intuitit/android/widget/BoundRemoteViews;)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Lmobi/intuitit/android/widget/BoundRemoteViews$CursorCache;->getValueOrDefault(ILmobi/intuitit/android/widget/SimpleRemoteViews$Action;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Landroid/database/Cursor;Landroid/content/Context;)Ljava/lang/Object;
    .locals 5
    .parameter "cursor"
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 135
    :try_start_0
    iget v2, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;->type:I

    packed-switch v2, :pswitch_data_0

    move-object v2, v4

    .line 163
    :goto_0
    return-object v2

    .line 138
    :pswitch_0
    iget v2, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;->mCursorIndex:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 140
    :pswitch_1
    iget v2, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;->mCursorIndex:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-byte v2, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    goto :goto_0

    .line 142
    :pswitch_2
    iget v2, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;->mCursorIndex:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-short v2, v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    goto :goto_0

    .line 144
    :pswitch_3
    iget v2, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;->mCursorIndex:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 146
    :pswitch_4
    iget v2, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;->mCursorIndex:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    .line 148
    :pswitch_5
    iget v2, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;->mCursorIndex:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_0

    .line 150
    :pswitch_6
    iget v2, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;->mCursorIndex:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_0

    .line 152
    :pswitch_7
    iget v2, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;->mCursorIndex:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    goto :goto_0

    .line 154
    :pswitch_8
    iget v2, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;->mCursorIndex:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    .line 156
    :pswitch_9
    iget v2, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;->mCursorIndex:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 157
    .local v0, blob:[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 160
    .end local v0           #blob:[B
    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, e:Ljava/lang/Exception;
    move-object v2, v4

    .line 161
    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected readValue(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;->mCursorIndex:I

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;->mDefaultResource:I

    .line 119
    return-void
.end method

.method protected writeValue(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 123
    iget v0, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;->mCursorIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget v0, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$BindingAction;->mDefaultResource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    return-void
.end method
