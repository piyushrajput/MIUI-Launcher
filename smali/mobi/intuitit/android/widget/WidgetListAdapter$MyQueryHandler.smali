.class Lmobi/intuitit/android/widget/WidgetListAdapter$MyQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "WidgetListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/intuitit/android/widget/WidgetListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/intuitit/android/widget/WidgetListAdapter;


# direct methods
.method public constructor <init>(Lmobi/intuitit/android/widget/WidgetListAdapter;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 467
    iput-object p1, p0, Lmobi/intuitit/android/widget/WidgetListAdapter$MyQueryHandler;->this$0:Lmobi/intuitit/android/widget/WidgetListAdapter;

    .line 468
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 469
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 9
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 472
    invoke-super {p0, p1, p2, p3}, Landroid/content/AsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    .line 473
    const-string v7, "LAUNCHER"

    const-string v8, "API v1 QUERY COMPLETE"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v7, p0, Lmobi/intuitit/android/widget/WidgetListAdapter$MyQueryHandler;->this$0:Lmobi/intuitit/android/widget/WidgetListAdapter;

    iget-object v7, v7, Lmobi/intuitit/android/widget/WidgetListAdapter;->rowsElementsList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 475
    iget-object v7, p0, Lmobi/intuitit/android/widget/WidgetListAdapter$MyQueryHandler;->this$0:Lmobi/intuitit/android/widget/WidgetListAdapter;

    iget-object v7, v7, Lmobi/intuitit/android/widget/WidgetListAdapter;->mItemMappings:[Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;

    array-length v6, v7

    .line 477
    .local v6, size:I
    :goto_0
    if-eqz p3, :cond_4

    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 479
    new-instance v5, Lmobi/intuitit/android/widget/WidgetListAdapter$RowElementsList;

    iget-object v7, p0, Lmobi/intuitit/android/widget/WidgetListAdapter$MyQueryHandler;->this$0:Lmobi/intuitit/android/widget/WidgetListAdapter;

    invoke-direct {v5, v7, v6}, Lmobi/intuitit/android/widget/WidgetListAdapter$RowElementsList;-><init>(Lmobi/intuitit/android/widget/WidgetListAdapter;I)V

    .line 484
    .local v5, singleRowElem:Lmobi/intuitit/android/widget/WidgetListAdapter$RowElementsList;
    const/4 v7, 0x1

    sub-int v1, v6, v7

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_3

    .line 486
    :try_start_0
    new-instance v4, Lmobi/intuitit/android/widget/WidgetListAdapter$RowElement;

    iget-object v7, p0, Lmobi/intuitit/android/widget/WidgetListAdapter$MyQueryHandler;->this$0:Lmobi/intuitit/android/widget/WidgetListAdapter;

    invoke-direct {v4, v7}, Lmobi/intuitit/android/widget/WidgetListAdapter$RowElement;-><init>(Lmobi/intuitit/android/widget/WidgetListAdapter;)V

    .line 488
    .local v4, re:Lmobi/intuitit/android/widget/WidgetListAdapter$RowElement;
    iget-object v7, p0, Lmobi/intuitit/android/widget/WidgetListAdapter$MyQueryHandler;->this$0:Lmobi/intuitit/android/widget/WidgetListAdapter;

    iget-object v7, v7, Lmobi/intuitit/android/widget/WidgetListAdapter;->mItemMappings:[Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;

    aget-object v2, v7, v1

    .line 490
    .local v2, itemMapping:Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;
    iget v7, v2, Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;->type:I

    packed-switch v7, :pswitch_data_0

    .line 512
    :goto_2
    iget-object v7, p0, Lmobi/intuitit/android/widget/WidgetListAdapter$MyQueryHandler;->this$0:Lmobi/intuitit/android/widget/WidgetListAdapter;

    iget-boolean v7, v7, Lmobi/intuitit/android/widget/WidgetListAdapter;->mItemChildrenClickable:Z

    if-eqz v7, :cond_2

    iget-boolean v7, v2, Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;->clickable:Z

    if-eqz v7, :cond_2

    .line 513
    iget-object v7, p0, Lmobi/intuitit/android/widget/WidgetListAdapter$MyQueryHandler;->this$0:Lmobi/intuitit/android/widget/WidgetListAdapter;

    iget v7, v7, Lmobi/intuitit/android/widget/WidgetListAdapter;->mItemActionUriIndex:I

    if-ltz v7, :cond_1

    .line 514
    iget-object v7, p0, Lmobi/intuitit/android/widget/WidgetListAdapter$MyQueryHandler;->this$0:Lmobi/intuitit/android/widget/WidgetListAdapter;

    iget v7, v7, Lmobi/intuitit/android/widget/WidgetListAdapter;->mItemActionUriIndex:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lmobi/intuitit/android/widget/WidgetListAdapter$RowElement;->tag:Ljava/lang/String;

    .line 523
    :cond_0
    :goto_3
    iget-object v7, v5, Lmobi/intuitit/android/widget/WidgetListAdapter$RowElementsList;->singleRowElementsList:[Lmobi/intuitit/android/widget/WidgetListAdapter$RowElement;

    aput-object v4, v7, v1

    .line 484
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 492
    :pswitch_0
    iget v7, v2, Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;->index:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lmobi/intuitit/android/widget/WidgetListAdapter$RowElement;->data:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 529
    .end local v2           #itemMapping:Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;
    .end local v4           #re:Lmobi/intuitit/android/widget/WidgetListAdapter$RowElement;
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 530
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 495
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #itemMapping:Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;
    .restart local v4       #re:Lmobi/intuitit/android/widget/WidgetListAdapter$RowElement;
    :pswitch_1
    :try_start_1
    iget v7, v2, Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;->index:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    iput-object v7, v4, Lmobi/intuitit/android/widget/WidgetListAdapter$RowElement;->data:Ljava/lang/Object;

    goto :goto_2

    .line 499
    :pswitch_2
    iget v7, v2, Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;->index:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 501
    .local v3, localData:[B
    iput-object v3, v4, Lmobi/intuitit/android/widget/WidgetListAdapter$RowElement;->data:Ljava/lang/Object;

    goto :goto_2

    .line 504
    .end local v3           #localData:[B
    :pswitch_3
    iget v7, v2, Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;->index:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lmobi/intuitit/android/widget/WidgetListAdapter$RowElement;->data:Ljava/lang/Object;

    goto :goto_2

    .line 507
    :pswitch_4
    iget v7, v2, Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;->index:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v4, Lmobi/intuitit/android/widget/WidgetListAdapter$RowElement;->data:Ljava/lang/Object;

    goto :goto_2

    .line 516
    :cond_1
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lmobi/intuitit/android/widget/WidgetListAdapter$RowElement;->tag:Ljava/lang/String;

    goto :goto_3

    .line 518
    :cond_2
    iget-object v7, p0, Lmobi/intuitit/android/widget/WidgetListAdapter$MyQueryHandler;->this$0:Lmobi/intuitit/android/widget/WidgetListAdapter;

    iget v7, v7, Lmobi/intuitit/android/widget/WidgetListAdapter;->mItemActionUriIndex:I

    if-ltz v7, :cond_0

    .line 519
    iget-object v7, p0, Lmobi/intuitit/android/widget/WidgetListAdapter$MyQueryHandler;->this$0:Lmobi/intuitit/android/widget/WidgetListAdapter;

    iget v7, v7, Lmobi/intuitit/android/widget/WidgetListAdapter;->mItemActionUriIndex:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lmobi/intuitit/android/widget/WidgetListAdapter$RowElement;->tag:Ljava/lang/String;

    goto :goto_3

    .line 527
    .end local v2           #itemMapping:Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;
    .end local v4           #re:Lmobi/intuitit/android/widget/WidgetListAdapter$RowElement;
    :cond_3
    iget-object v7, p0, Lmobi/intuitit/android/widget/WidgetListAdapter$MyQueryHandler;->this$0:Lmobi/intuitit/android/widget/WidgetListAdapter;

    iget-object v7, v7, Lmobi/intuitit/android/widget/WidgetListAdapter;->rowsElementsList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 534
    .end local v1           #i:I
    .end local v5           #singleRowElem:Lmobi/intuitit/android/widget/WidgetListAdapter$RowElementsList;
    :cond_4
    if-eqz p3, :cond_5

    .line 535
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 536
    :cond_5
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 537
    iget-object v7, p0, Lmobi/intuitit/android/widget/WidgetListAdapter$MyQueryHandler;->this$0:Lmobi/intuitit/android/widget/WidgetListAdapter;

    invoke-virtual {v7}, Lmobi/intuitit/android/widget/WidgetListAdapter;->notifyDataSetChanged()V

    .line 538
    return-void

    .line 490
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
