.class Lcom/android/launcher2/gadget/FlipClock$ViewList;
.super Ljava/util/ArrayList;
.source "FlipClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/gadget/FlipClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/gadget/FlipClock;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/gadget/FlipClock;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/launcher2/gadget/FlipClock$ViewList;->this$0:Lcom/android/launcher2/gadget/FlipClock;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/gadget/FlipClock;Lcom/android/launcher2/gadget/FlipClock$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/launcher2/gadget/FlipClock$ViewList;-><init>(Lcom/android/launcher2/gadget/FlipClock;)V

    return-void
.end method
