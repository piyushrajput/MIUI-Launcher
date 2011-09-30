.class Lcom/android/launcher2/gadget/FrequentContacts$AlphaAnimationListener;
.super Ljava/lang/Object;
.source "FrequentContacts.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/gadget/FrequentContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlphaAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/gadget/FrequentContacts;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/gadget/FrequentContacts;)V
    .locals 0
    .parameter

    .prologue
    .line 742
    iput-object p1, p0, Lcom/android/launcher2/gadget/FrequentContacts$AlphaAnimationListener;->this$0:Lcom/android/launcher2/gadget/FrequentContacts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/gadget/FrequentContacts;Lcom/android/launcher2/gadget/FrequentContacts$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    invoke-direct {p0, p1}, Lcom/android/launcher2/gadget/FrequentContacts$AlphaAnimationListener;-><init>(Lcom/android/launcher2/gadget/FrequentContacts;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6
    .parameter "animation"

    .prologue
    .line 745
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v3, 0x6

    if-ge v1, v3, :cond_0

    .line 746
    iget-object v3, p0, Lcom/android/launcher2/gadget/FrequentContacts$AlphaAnimationListener;->this$0:Lcom/android/launcher2/gadget/FrequentContacts;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/gadget/FrequentContacts;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 747
    .local v2, layer:Landroid/widget/ImageView;
    const/high16 v3, 0x437f

    invoke-static {}, Lcom/android/launcher2/gadget/FrequentContacts;->access$000()[F

    move-result-object v4

    div-int/lit8 v5, v1, 0x2

    aget v4, v4, v5

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 748
    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 745
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 751
    .end local v2           #layer:Landroid/widget/ImageView;
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/gadget/FrequentContacts$AlphaAnimationListener;->this$0:Lcom/android/launcher2/gadget/FrequentContacts;

    invoke-static {v3}, Lcom/android/launcher2/gadget/FrequentContacts;->access$100(Lcom/android/launcher2/gadget/FrequentContacts;)I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/gadget/FrequentContacts$AlphaAnimationListener;->this$0:Lcom/android/launcher2/gadget/FrequentContacts;

    invoke-static {v4}, Lcom/android/launcher2/gadget/FrequentContacts;->access$200(Lcom/android/launcher2/gadget/FrequentContacts;)I

    move-result v4

    sub-int v0, v3, v4

    .line 752
    .local v0, delta:I
    iget-object v3, p0, Lcom/android/launcher2/gadget/FrequentContacts$AlphaAnimationListener;->this$0:Lcom/android/launcher2/gadget/FrequentContacts;

    iget-object v4, p0, Lcom/android/launcher2/gadget/FrequentContacts$AlphaAnimationListener;->this$0:Lcom/android/launcher2/gadget/FrequentContacts;

    invoke-static {v4}, Lcom/android/launcher2/gadget/FrequentContacts;->access$100(Lcom/android/launcher2/gadget/FrequentContacts;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/launcher2/gadget/FrequentContacts;->access$300(Lcom/android/launcher2/gadget/FrequentContacts;I)V

    .line 753
    iget-object v3, p0, Lcom/android/launcher2/gadget/FrequentContacts$AlphaAnimationListener;->this$0:Lcom/android/launcher2/gadget/FrequentContacts;

    iget-object v4, p0, Lcom/android/launcher2/gadget/FrequentContacts$AlphaAnimationListener;->this$0:Lcom/android/launcher2/gadget/FrequentContacts;

    invoke-static {v4}, Lcom/android/launcher2/gadget/FrequentContacts;->access$100(Lcom/android/launcher2/gadget/FrequentContacts;)I

    move-result v4

    add-int/2addr v4, v0

    invoke-static {v3, v4}, Lcom/android/launcher2/gadget/FrequentContacts;->access$400(Lcom/android/launcher2/gadget/FrequentContacts;I)V

    .line 754
    iget-object v3, p0, Lcom/android/launcher2/gadget/FrequentContacts$AlphaAnimationListener;->this$0:Lcom/android/launcher2/gadget/FrequentContacts;

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/android/launcher2/gadget/FrequentContacts;->access$102(Lcom/android/launcher2/gadget/FrequentContacts;I)I

    .line 755
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 758
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 761
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 762
    iget-object v2, p0, Lcom/android/launcher2/gadget/FrequentContacts$AlphaAnimationListener;->this$0:Lcom/android/launcher2/gadget/FrequentContacts;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/gadget/FrequentContacts;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 763
    .local v1, layer:Landroid/widget/ImageView;
    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 761
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 765
    .end local v1           #layer:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method
