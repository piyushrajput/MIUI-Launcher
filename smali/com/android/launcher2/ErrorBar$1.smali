.class Lcom/android/launcher2/ErrorBar$1;
.super Ljava/lang/Object;
.source "ErrorBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/ErrorBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/ErrorBar;


# direct methods
.method constructor <init>(Lcom/android/launcher2/ErrorBar;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/launcher2/ErrorBar$1;->this$0:Lcom/android/launcher2/ErrorBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher2/ErrorBar$1;->this$0:Lcom/android/launcher2/ErrorBar;

    invoke-virtual {v0}, Lcom/android/launcher2/ErrorBar;->hideError()V

    .line 45
    return-void
.end method
