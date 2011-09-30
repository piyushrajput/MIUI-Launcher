.class Lmobi/intuitit/android/widget/WidgetSpace$AnimationException;
.super Ljava/lang/Exception;
.source "WidgetSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/intuitit/android/widget/WidgetSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimationException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4cc7e1d2be8c6e56L


# instance fields
.field public mAction:Ljava/lang/String;

.field final synthetic this$0:Lmobi/intuitit/android/widget/WidgetSpace;


# direct methods
.method constructor <init>(Lmobi/intuitit/android/widget/WidgetSpace;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "action"
    .parameter "msg"

    .prologue
    .line 822
    iput-object p1, p0, Lmobi/intuitit/android/widget/WidgetSpace$AnimationException;->this$0:Lmobi/intuitit/android/widget/WidgetSpace;

    .line 823
    invoke-direct {p0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 824
    iput-object p2, p0, Lmobi/intuitit/android/widget/WidgetSpace$AnimationException;->mAction:Ljava/lang/String;

    .line 826
    return-void
.end method
