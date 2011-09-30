.class public abstract Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;
.super Ljava/lang/Object;
.source "SimpleRemoteViews.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/intuitit/android/widget/SimpleRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "Action"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract apply(Landroid/view/View;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/intuitit/android/widget/SimpleRemoteViews$ActionException;
        }
    .end annotation
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method
