.class Lcom/android/launcher2/ClockStylePicker$ClockStyleAdapter;
.super Lcom/miui/android/resourcebrowser/LocalResourceAdapter;
.source "ClockStylePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/ClockStylePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClockStyleAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/ClockStylePicker$ClockStyleAdapter$AsyncClockStyleLoadTask;
    }
.end annotation


# instance fields
.field private final mFilterCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;I)V
    .locals 0
    .parameter "context"
    .parameter "metaData"
    .parameter "filterCode"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/miui/android/resourcebrowser/LocalResourceAdapter;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 33
    iput p3, p0, Lcom/android/launcher2/ClockStylePicker$ClockStyleAdapter;->mFilterCode:I

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/ClockStylePicker$ClockStyleAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/launcher2/ClockStylePicker$ClockStyleAdapter;->mFilterCode:I

    return v0
.end method


# virtual methods
.method protected getLoadDataTask()Landroid/widget/AsyncAdapter$AsyncLoadDataTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/AsyncAdapter",
            "<",
            "Lcom/miui/android/resourcebrowser/Resource;",
            ">.Async",
            "LoadDataTask;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v1, Lcom/android/launcher2/ClockStylePicker$ClockStyleAdapter$AsyncClockStyleLoadTask;

    invoke-direct {v1, p0}, Lcom/android/launcher2/ClockStylePicker$ClockStyleAdapter$AsyncClockStyleLoadTask;-><init>(Lcom/android/launcher2/ClockStylePicker$ClockStyleAdapter;)V

    .line 40
    .local v1, task:Lcom/android/launcher2/ClockStylePicker$ClockStyleAdapter$AsyncClockStyleLoadTask;
    iget-object v3, p0, Lcom/android/launcher2/ClockStylePicker$ClockStyleAdapter;->mContext:Landroid/app/Activity;

    check-cast v3, Landroid/os/AsyncTaskObserver;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/ClockStylePicker$ClockStyleAdapter$AsyncClockStyleLoadTask;->addObserver(Landroid/os/AsyncTaskObserver;)V

    .line 41
    invoke-virtual {p0}, Lcom/android/launcher2/ClockStylePicker$ClockStyleAdapter;->getVisitors()Ljava/util/List;

    move-result-object v2

    .line 42
    .local v2, visitors:Ljava/util/List;,"Ljava/util/List<Landroid/widget/AsyncAdapter$AsyncLoadDataVisitor<Lcom/miui/android/resourcebrowser/Resource;>;>;"
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 43
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/AsyncAdapter$AsyncLoadDataVisitor;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/ClockStylePicker$ClockStyleAdapter$AsyncClockStyleLoadTask;->addVisitor(Landroid/widget/AsyncAdapter$AsyncLoadDataVisitor;)V

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_0
    return-object v1
.end method
