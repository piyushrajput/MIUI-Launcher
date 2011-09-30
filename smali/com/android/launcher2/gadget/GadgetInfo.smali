.class public Lcom/android/launcher2/gadget/GadgetInfo;
.super Lcom/android/launcher2/ItemInfo;
.source "GadgetInfo.java"


# instance fields
.field public mGadgetId:I

.field public mIconId:I

.field public mTitleId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "gadgetId"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/launcher2/ItemInfo;-><init>()V

    .line 39
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher2/gadget/GadgetInfo;->itemType:I

    .line 40
    iput p1, p0, Lcom/android/launcher2/gadget/GadgetInfo;->mGadgetId:I

    .line 41
    return-void
.end method


# virtual methods
.method public getGadgetId()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/android/launcher2/gadget/GadgetInfo;->mGadgetId:I

    return v0
.end method

.method public onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/launcher2/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 50
    const-string v0, "appWidgetId"

    iget v1, p0, Lcom/android/launcher2/gadget/GadgetInfo;->mGadgetId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gadget(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/gadget/GadgetInfo;->mGadgetId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
