.class final Lmobi/intuitit/android/widget/SimpleRemoteViews$1;
.super Ljava/lang/Object;
.source "SimpleRemoteViews.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/intuitit/android/widget/SimpleRemoteViews;
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
        "Lmobi/intuitit/android/widget/SimpleRemoteViews;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 934
    invoke-virtual {p0, p1}, Lmobi/intuitit/android/widget/SimpleRemoteViews$1;->createFromParcel(Landroid/os/Parcel;)Lmobi/intuitit/android/widget/SimpleRemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmobi/intuitit/android/widget/SimpleRemoteViews;
    .locals 1
    .parameter "parcel"

    .prologue
    .line 936
    new-instance v0, Lmobi/intuitit/android/widget/SimpleRemoteViews;

    invoke-direct {v0, p1}, Lmobi/intuitit/android/widget/SimpleRemoteViews;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 934
    invoke-virtual {p0, p1}, Lmobi/intuitit/android/widget/SimpleRemoteViews$1;->newArray(I)[Lmobi/intuitit/android/widget/SimpleRemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lmobi/intuitit/android/widget/SimpleRemoteViews;
    .locals 1
    .parameter "size"

    .prologue
    .line 940
    new-array v0, p1, [Lmobi/intuitit/android/widget/SimpleRemoteViews;

    return-object v0
.end method
