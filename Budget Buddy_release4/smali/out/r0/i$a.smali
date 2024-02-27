.class Lr0/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/j$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lr0/i;


# direct methods
.method constructor <init>(Lr0/i;)V
    .registers 2

    iput-object p1, p0, Lr0/i$a;->a:Lr0/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ls0/i;Ls0/j$d;)V
    .registers 3

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ls0/j$d;->a(Ljava/lang/Object;)V

    return-void
.end method
