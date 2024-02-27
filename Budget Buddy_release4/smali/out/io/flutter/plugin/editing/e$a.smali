.class Lio/flutter/plugin/editing/e$a;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugin/editing/e;-><init>(Lr0/q$e;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/text/Editable;

.field final synthetic b:Lio/flutter/plugin/editing/e;


# direct methods
.method constructor <init>(Lio/flutter/plugin/editing/e;Landroid/view/View;ZLandroid/text/Editable;)V
    .registers 5

    iput-object p1, p0, Lio/flutter/plugin/editing/e$a;->b:Lio/flutter/plugin/editing/e;

    iput-object p4, p0, Lio/flutter/plugin/editing/e$a;->a:Landroid/text/Editable;

    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public getEditable()Landroid/text/Editable;
    .registers 2

    iget-object v0, p0, Lio/flutter/plugin/editing/e$a;->a:Landroid/text/Editable;

    return-object v0
.end method
