.class Landroidx/appcompat/view/menu/b$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/widget/b1;

.field public final b:Landroidx/appcompat/view/menu/e;

.field public final c:I


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/b1;Landroidx/appcompat/view/menu/e;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/b$d;->a:Landroidx/appcompat/widget/b1;

    iput-object p2, p0, Landroidx/appcompat/view/menu/b$d;->b:Landroidx/appcompat/view/menu/e;

    iput p3, p0, Landroidx/appcompat/view/menu/b$d;->c:I

    return-void
.end method


# virtual methods
.method public a()Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/b$d;->a:Landroidx/appcompat/widget/b1;

    invoke-virtual {v0}, Landroidx/appcompat/widget/w0;->g()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method
