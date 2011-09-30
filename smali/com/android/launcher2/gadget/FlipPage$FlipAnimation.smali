.class Lcom/android/launcher2/gadget/FlipPage$FlipAnimation;
.super Landroid/view/animation/Animation;
.source "FlipPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/gadget/FlipPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlipAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/gadget/FlipPage;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/gadget/FlipPage;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/launcher2/gadget/FlipPage$FlipAnimation;->this$0:Lcom/android/launcher2/gadget/FlipPage;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/gadget/FlipPage;Lcom/android/launcher2/gadget/FlipPage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/launcher2/gadget/FlipPage$FlipAnimation;-><init>(Lcom/android/launcher2/gadget/FlipPage;)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 61
    const/high16 v1, 0x4170

    mul-float/2addr v1, p1

    float-to-int v0, v1

    .line 62
    .local v0, mPos:I
    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    const/16 v1, 0xe

    move v0, v1

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/gadget/FlipPage$FlipAnimation;->this$0:Lcom/android/launcher2/gadget/FlipPage;

    invoke-static {v1}, Lcom/android/launcher2/gadget/FlipPage;->access$000(Lcom/android/launcher2/gadget/FlipPage;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 77
    :goto_0
    return-void

    .line 65
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/gadget/FlipPage$FlipAnimation;->this$0:Lcom/android/launcher2/gadget/FlipPage;

    invoke-static {v2}, Lcom/android/launcher2/gadget/FlipPage;->access$100(Lcom/android/launcher2/gadget/FlipPage;)[Landroid/graphics/Matrix;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 68
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/gadget/FlipPage$FlipAnimation;->this$0:Lcom/android/launcher2/gadget/FlipPage;

    invoke-static {v2}, Lcom/android/launcher2/gadget/FlipPage;->access$100(Lcom/android/launcher2/gadget/FlipPage;)[Landroid/graphics/Matrix;

    move-result-object v2

    add-int/lit8 v3, v0, 0xf

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 71
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/gadget/FlipPage$FlipAnimation;->this$0:Lcom/android/launcher2/gadget/FlipPage;

    invoke-static {v2}, Lcom/android/launcher2/gadget/FlipPage;->access$100(Lcom/android/launcher2/gadget/FlipPage;)[Landroid/graphics/Matrix;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1e

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 74
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/gadget/FlipPage$FlipAnimation;->this$0:Lcom/android/launcher2/gadget/FlipPage;

    invoke-static {v2}, Lcom/android/launcher2/gadget/FlipPage;->access$100(Lcom/android/launcher2/gadget/FlipPage;)[Landroid/graphics/Matrix;

    move-result-object v2

    add-int/lit8 v3, v0, 0x2d

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
