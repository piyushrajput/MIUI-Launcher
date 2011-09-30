.class Lcom/android/launcher2/CellLayout$ViewPositionMapping;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewPositionMapping"
.end annotation


# instance fields
.field cell:Landroid/view/View;

.field position:[I

.field final synthetic this$0:Lcom/android/launcher2/CellLayout;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/CellLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 719
    iput-object p1, p0, Lcom/android/launcher2/CellLayout$ViewPositionMapping;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/CellLayout$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 719
    invoke-direct {p0, p1}, Lcom/android/launcher2/CellLayout$ViewPositionMapping;-><init>(Lcom/android/launcher2/CellLayout;)V

    return-void
.end method
