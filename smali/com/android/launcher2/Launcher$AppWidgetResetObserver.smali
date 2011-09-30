.class Lcom/android/launcher2/Launcher$AppWidgetResetObserver;
.super Landroid/database/ContentObserver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppWidgetResetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 1
    .parameter

    .prologue
    .line 1725
    iput-object p1, p0, Lcom/android/launcher2/Launcher$AppWidgetResetObserver;->this$0:Lcom/android/launcher2/Launcher;

    .line 1726
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1727
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 1731
    iget-object v0, p0, Lcom/android/launcher2/Launcher$AppWidgetResetObserver;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$800(Lcom/android/launcher2/Launcher;)V

    .line 1732
    return-void
.end method
