.class public Lmobi/intuitit/android/widget/SimpleRemoteViews$SetOnClickPendingIntent;
.super Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;
.source "SimpleRemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/intuitit/android/widget/SimpleRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SetOnClickPendingIntent"
.end annotation


# static fields
.field public static final TAG:I = 0x1


# instance fields
.field pendingIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Lmobi/intuitit/android/widget/SimpleRemoteViews;

.field viewId:I


# direct methods
.method public constructor <init>(Lmobi/intuitit/android/widget/SimpleRemoteViews;ILandroid/app/PendingIntent;)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "pendingIntent"

    .prologue
    .line 230
    iput-object p1, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetOnClickPendingIntent;->this$0:Lmobi/intuitit/android/widget/SimpleRemoteViews;

    invoke-direct {p0}, Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;-><init>()V

    .line 231
    iput p2, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetOnClickPendingIntent;->viewId:I

    .line 232
    iput-object p3, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetOnClickPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    .line 233
    return-void
.end method

.method public constructor <init>(Lmobi/intuitit/android/widget/SimpleRemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .parameter
    .parameter "parcel"

    .prologue
    .line 235
    iput-object p1, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetOnClickPendingIntent;->this$0:Lmobi/intuitit/android/widget/SimpleRemoteViews;

    invoke-direct {p0}, Lmobi/intuitit/android/widget/SimpleRemoteViews$Action;-><init>()V

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetOnClickPendingIntent;->viewId:I

    .line 237
    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetOnClickPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    .line 238
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;)V
    .locals 3
    .parameter "root"

    .prologue
    .line 249
    iget v2, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetOnClickPendingIntent;->viewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 250
    .local v1, target:Landroid/view/View;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetOnClickPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    .line 251
    new-instance v0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetOnClickPendingIntent$1;

    invoke-direct {v0, p0}, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetOnClickPendingIntent$1;-><init>(Lmobi/intuitit/android/widget/SimpleRemoteViews$SetOnClickPendingIntent;)V

    .line 272
    .local v0, listener:Landroid/view/View$OnClickListener;
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    .end local v0           #listener:Landroid/view/View$OnClickListener;
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 242
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget v0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetOnClickPendingIntent;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    iget-object v0, p0, Lmobi/intuitit/android/widget/SimpleRemoteViews$SetOnClickPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 245
    return-void
.end method
