.class Lmobi/intuitit/android/widget/WidgetSpace$FrameAnimationException;
.super Lmobi/intuitit/android/widget/WidgetSpace$AnimationException;
.source "WidgetSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/intuitit/android/widget/WidgetSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FrameAnimationException"
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/intuitit/android/widget/WidgetSpace;


# direct methods
.method public constructor <init>(Lmobi/intuitit/android/widget/WidgetSpace;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "msg"

    .prologue
    .line 830
    iput-object p1, p0, Lmobi/intuitit/android/widget/WidgetSpace$FrameAnimationException;->this$0:Lmobi/intuitit/android/widget/WidgetSpace;

    .line 831
    const-string v0, "mobi.intuitit.android.hpp.ERROR_FRAME_ANIMATION"

    invoke-direct {p0, p1, v0, p2}, Lmobi/intuitit/android/widget/WidgetSpace$AnimationException;-><init>(Lmobi/intuitit/android/widget/WidgetSpace;Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    return-void
.end method
