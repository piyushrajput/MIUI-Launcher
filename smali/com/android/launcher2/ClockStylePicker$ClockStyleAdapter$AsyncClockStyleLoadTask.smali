.class Lcom/android/launcher2/ClockStylePicker$ClockStyleAdapter$AsyncClockStyleLoadTask;
.super Landroid/widget/AsyncAdapter$AsyncLoadDataTask;
.source "ClockStylePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/ClockStylePicker$ClockStyleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncClockStyleLoadTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/ClockStylePicker$ClockStyleAdapter;


# direct methods
.method constructor <init>(Lcom/android/launcher2/ClockStylePicker$ClockStyleAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/launcher2/ClockStylePicker$ClockStyleAdapter$AsyncClockStyleLoadTask;->this$0:Lcom/android/launcher2/ClockStylePicker$ClockStyleAdapter;

    invoke-direct {p0, p1}, Landroid/widget/AsyncAdapter$AsyncLoadDataTask;-><init>(Landroid/widget/AsyncAdapter;)V

    return-void
.end method


# virtual methods
.method protected loadData(I)[Lcom/miui/android/resourcebrowser/Resource;
    .locals 1
    .parameter "index"

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic loadData(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/launcher2/ClockStylePicker$ClockStyleAdapter$AsyncClockStyleLoadTask;->loadData(I)[Lcom/miui/android/resourcebrowser/Resource;

    move-result-object v0

    return-object v0
.end method

.method public varargs onLoadData([Lcom/miui/android/resourcebrowser/Resource;)V
    .locals 11
    .parameter "partialDataSet"

    .prologue
    .line 54
    if-eqz p1, :cond_5

    .line 55
    array-length v9, p1

    new-array v2, v9, [Z

    .line 56
    .local v2, flag:[Z
    const/4 v0, 0x0

    .line 57
    .local v0, c:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v9, p1

    if-ge v3, v9, :cond_2

    .line 58
    aget-object v6, p1, v3

    .line 59
    .local v6, r:Lcom/miui/android/resourcebrowser/Resource;
    invoke-virtual {v6}, Lcom/miui/android/resourcebrowser/Resource;->getInformation()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "RESOURCE_NVP"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    .line 61
    .local v7, s:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "type"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 63
    .local v1, filterStr:Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/android/launcher2/ClockStylePicker$ClockStyleAdapter$AsyncClockStyleLoadTask;->this$0:Lcom/android/launcher2/ClockStylePicker$ClockStyleAdapter;

    invoke-static {v9}, Lcom/android/launcher2/ClockStylePicker$ClockStyleAdapter;->access$000(Lcom/android/launcher2/ClockStylePicker$ClockStyleAdapter;)I

    move-result v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    and-int/2addr v9, v10

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    :goto_1
    aput-boolean v9, v2, v3

    .line 64
    aget-boolean v9, v2, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v9, :cond_0

    .line 65
    add-int/lit8 v0, v0, 0x1

    .line 57
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 63
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 71
    .end local v1           #filterStr:Ljava/lang/String;
    .end local v6           #r:Lcom/miui/android/resourcebrowser/Resource;
    .end local v7           #s:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    new-array v8, v0, [Lcom/miui/android/resourcebrowser/Resource;

    .line 72
    .local v8, usable:[Lcom/miui/android/resourcebrowser/Resource;
    const/4 v4, 0x0

    .line 73
    .local v4, k:I
    const/4 v3, 0x0

    :goto_3
    array-length v9, v8

    if-ge v3, v9, :cond_4

    .line 74
    aget-boolean v9, v2, v3

    if-eqz v9, :cond_3

    .line 75
    add-int/lit8 v5, v4, 0x1

    .end local v4           #k:I
    .local v5, k:I
    aget-object v9, p1, v3

    aput-object v9, v8, v4

    move v4, v5

    .line 73
    .end local v5           #k:I
    .restart local v4       #k:I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 78
    :cond_4
    move-object p1, v8

    .line 80
    .end local v0           #c:I
    .end local v2           #flag:[Z
    .end local v3           #i:I
    .end local v4           #k:I
    .end local v8           #usable:[Lcom/miui/android/resourcebrowser/Resource;
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/AsyncAdapter$AsyncLoadDataTask;->onLoadData([Ljava/lang/Object;)V

    .line 81
    return-void

    .line 67
    .restart local v0       #c:I
    .restart local v1       #filterStr:Ljava/lang/String;
    .restart local v2       #flag:[Z
    .restart local v3       #i:I
    .restart local v6       #r:Lcom/miui/android/resourcebrowser/Resource;
    .restart local v7       #s:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v9

    goto :goto_2
.end method

.method public bridge synthetic onLoadData([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    check-cast p1, [Lcom/miui/android/resourcebrowser/Resource;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/ClockStylePicker$ClockStyleAdapter$AsyncClockStyleLoadTask;->onLoadData([Lcom/miui/android/resourcebrowser/Resource;)V

    return-void
.end method
