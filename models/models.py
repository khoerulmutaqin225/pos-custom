from odoo import models, api


class PosConfig(models.Model):
    _inherit = 'pos.config'

    def any_write(self):
        for rec in self:
            if rec.name == 'Shop':
                rec.write({'name': 'Reservation'})
                return True  # Return True after successful update
        return False  # Return False if no record with name 'Shop' was found
