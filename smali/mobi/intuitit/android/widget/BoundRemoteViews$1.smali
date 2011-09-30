.class final Lmobi/intuitit/android/widget/BoundRemoteViews$1;
.super Ljava/lang/Object;
.source "BoundRemoteViews.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/intuitit/android/widget/BoundRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lmobi/intuitit/android/widget/BoundRemoteViews;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 389
    invoke-virtual {p0, p1}, Lmobi/intuitit/android/widget/BoundRemoteViews$1;->createFromParcel(Landroid/os/Parcel;)Lmobi/intuitit/android/widget/BoundRemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmobi/intuitit/android/widget/BoundRemoteViews;
    .locals 1
    .parameter "parcel"

    .prologue
    .line 391
    new-instance v0, Lmobi/intuitit/android/widget/BoundRemoteViews;

    invoke-direct {v0, p1}, Lmobi/intuitit/android/widget/BoundRemoteViews;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 389
    invoke-virtual {p0, p1}, Lmobi/intuitit/android/widget/BoundRemoteViews$1;->newArray(I)[Lmobi/intuitit/android/widget/BoundRemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lmobi/intuitit/android/widget/BoundRemoteViews;
    .locals 1
    .parameter "size"

    .prologue
    .line 395
    new-array v0, p1, [Lmobi/intuitit/android/widget/BoundRemoteViews;

    return-object v0
.end method
