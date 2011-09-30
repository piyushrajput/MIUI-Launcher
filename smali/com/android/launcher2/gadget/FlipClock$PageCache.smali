.class Lcom/android/launcher2/gadget/FlipClock$PageCache;
.super Ljava/lang/Object;
.source "FlipClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/gadget/FlipClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageCache"
.end annotation


# instance fields
.field mPages:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/launcher2/gadget/FlipClock;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/gadget/FlipClock;)V
    .locals 1
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/launcher2/gadget/FlipClock$PageCache;->this$0:Lcom/android/launcher2/gadget/FlipClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/gadget/FlipClock$PageCache;->mPages:Ljava/util/LinkedList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/gadget/FlipClock;Lcom/android/launcher2/gadget/FlipClock$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lcom/android/launcher2/gadget/FlipClock$PageCache;-><init>(Lcom/android/launcher2/gadget/FlipClock;)V

    return-void
.end method


# virtual methods
.method public get(I)Landroid/view/View;
    .locals 4
    .parameter "pageType"

    .prologue
    .line 222
    iget-object v2, p0, Lcom/android/launcher2/gadget/FlipClock$PageCache;->mPages:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 223
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    iget-object v2, p0, Lcom/android/launcher2/gadget/FlipClock$PageCache;->mPages:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-object v2, v1

    .line 228
    .end local v1           #v:Landroid/view/View;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public put(Lcom/android/launcher2/gadget/FlipClock$ViewList;)V
    .locals 3
    .parameter "vl"

    .prologue
    .line 216
    invoke-virtual {p1}, Lcom/android/launcher2/gadget/FlipClock$ViewList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 217
    .local v1, v:Landroid/view/View;
    iget-object v2, p0, Lcom/android/launcher2/gadget/FlipClock$PageCache;->mPages:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 219
    .end local v1           #v:Landroid/view/View;
    :cond_0
    return-void
.end method
