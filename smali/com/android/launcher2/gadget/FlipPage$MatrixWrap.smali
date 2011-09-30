.class Lcom/android/launcher2/gadget/FlipPage$MatrixWrap;
.super Ljava/lang/Object;
.source "FlipPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/gadget/FlipPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MatrixWrap"
.end annotation


# instance fields
.field public final mMatrixArr:[Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>([Landroid/graphics/Matrix;)V
    .locals 0
    .parameter "matrixArr"

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/android/launcher2/gadget/FlipPage$MatrixWrap;->mMatrixArr:[Landroid/graphics/Matrix;

    .line 124
    return-void
.end method
