.class public Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;
.super Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;
.source "BoundRemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/intuitit/android/widget/BoundRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SetBoundOnClickIntent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent$BoundOnClickListener;
    }
.end annotation


# static fields
.field private static final TAG:I = 0x64


# instance fields
.field private final mExtraCursorIndex:I

.field private final mExtraName:Ljava/lang/String;

.field private final mIntent:Landroid/app/PendingIntent;

.field private final mViewId:I

.field final synthetic this$0:Lmobi/intuitit/android/widget/BoundRemoteViews;


# direct methods
.method public constructor <init>(Lmobi/intuitit/android/widget/BoundRemoteViews;ILandroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "intent"
    .parameter "extraName"
    .parameter "extraCursorIndex"

    .prologue
    .line 198
    iput-object p1, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;->this$0:Lmobi/intuitit/android/widget/BoundRemoteViews;

    invoke-direct {p0}, Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;-><init>()V

    .line 199
    iput p2, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;->mViewId:I

    .line 200
    iput-object p3, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;->mIntent:Landroid/app/PendingIntent;

    .line 201
    iput-object p4, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;->mExtraName:Ljava/lang/String;

    .line 202
    iput p5, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;->mExtraCursorIndex:I

    .line 203
    return-void
.end method

.method public constructor <init>(Lmobi/intuitit/android/widget/BoundRemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .parameter
    .parameter "parcel"

    .prologue
    .line 205
    iput-object p1, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;->this$0:Lmobi/intuitit/android/widget/BoundRemoteViews;

    invoke-direct {p0}, Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;-><init>()V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;->mViewId:I

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;->mExtraName:Ljava/lang/String;

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;->mExtraCursorIndex:I

    .line 209
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;->mIntent:Landroid/app/PendingIntent;

    .line 210
    return-void
.end method

.method static synthetic access$200(Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 189
    iget-object v0, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;->mIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$300(Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 189
    iget-object v0, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;->mExtraName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public apply(Landroid/view/View;)V
    .locals 3
    .parameter "root"

    .prologue
    .line 222
    iget v1, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;->mViewId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 223
    .local v0, target:Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;->mIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 224
    new-instance v1, Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent$BoundOnClickListener;

    iget-object v2, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;->this$0:Lmobi/intuitit/android/widget/BoundRemoteViews;

    invoke-static {v2}, Lmobi/intuitit/android/widget/BoundRemoteViews;->access$000(Lmobi/intuitit/android/widget/BoundRemoteViews;)I

    move-result v2

    invoke-direct {v1, p0, v2}, Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent$BoundOnClickListener;-><init>(Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    :cond_0
    return-void
.end method

.method public readValue(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 263
    iget v0, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;->mExtraCursorIndex:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 213
    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget v0, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget-object v0, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;->mExtraName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    iget v0, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;->mExtraCursorIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    iget-object v0, p0, Lmobi/intuitit/android/widget/BoundRemoteViews$SetBoundOnClickIntent;->mIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 218
    return-void
.end method
